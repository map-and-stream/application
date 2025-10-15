#include <gmock/gmock-matchers.h>
#include <gtest/gtest.h>

#include <thread>
#include "../entities/track.h"
#include "../entities/radar.h"


using namespace testing;

TEST(interactor, entities)
{
    EXPECT_EQ(1, 1);
    ASSERT_THAT(0, Eq(0));
}

TEST(TrackedEntityTest, GeneratesUniqueIdsConcurrently) {
    constexpr int numThreads = 10;
    constexpr int entitiesPerThread = 100;
    std::vector<uint64_t> ids;
    ids.reserve(numThreads * entitiesPerThread);
    std::mutex mutex;  // Protect shared vector

    auto createEntities = [&]() {
        for (int i = 0; i < entitiesPerThread; ++i) {
            Track entity("Test", Position(0, 0), 0.0);
            std::lock_guard<std::mutex> lock(mutex);
            ids.push_back(entity.getId());
        }
    };

    std::vector<std::thread> threads;
    for (int i = 0; i < numThreads; ++i) {
        threads.emplace_back(createEntities);
    }
    for (auto& t : threads) {
        t.join();
    }

    // Check for uniqueness
    std::sort(ids.begin(), ids.end());
    auto uniqueEnd = std::unique(ids.begin(), ids.end());
    ASSERT_EQ(ids.size(), static_cast<size_t>(uniqueEnd - ids.begin()));
}

TEST(RadarTest, ConstructorInitializesAllFieldsCorrectly) {
    const uint64_t id = 42;
    const std::string name = "NEXRAD-7";
    const double lat = 34.0522;
    const double lon = -118.2437;
    const double alt = 150.5;
    const double range_drift = 2.3;
    const double azimuth_drift = 0.75;
    const RadarStatus status = RadarStatus::OPERATIONAL;
    const RadarType type = RadarType::DOPPLER;

    Radar radar(id, name, lat, lon, alt, range_drift, azimuth_drift, status, type);

    EXPECT_EQ(radar.getId(), id);
    EXPECT_EQ(radar.getName(), name);
    EXPECT_DOUBLE_EQ(radar.getLatitude(), lat);
    EXPECT_DOUBLE_EQ(radar.getLongitude(), lon);
    EXPECT_DOUBLE_EQ(radar.getAltitude(), alt);
    EXPECT_DOUBLE_EQ(radar.getRangeDrift(), range_drift);
    EXPECT_DOUBLE_EQ(radar.getAzimuthDrift(), azimuth_drift);
    EXPECT_EQ(radar.getStatus(), status);
    EXPECT_EQ(radar.getType(), type);
}

TEST(RadarTest, DifferentInstancesWithSameDataAreLogicallyEqual) {
    Radar r1(101, "RadarA", 40.0, -75.0, 100.0, 0.5, 1.2, RadarStatus::DEGRADED, RadarType::PRIMARY);
    Radar r2(101, "RadarA", 40.0, -75.0, 100.0, 0.5, 1.2, RadarStatus::DEGRADED, RadarType::PRIMARY);

    // Since we don't have operator==, we compare field by field
    EXPECT_EQ(r1.getId(), r2.getId());
    EXPECT_EQ(r1.getName(), r2.getName());
    EXPECT_DOUBLE_EQ(r1.getLatitude(), r2.getLatitude());
    EXPECT_DOUBLE_EQ(r1.getLongitude(), r2.getLongitude());
    EXPECT_DOUBLE_EQ(r1.getAltitude(), r2.getAltitude());
    EXPECT_DOUBLE_EQ(r1.getRangeDrift(), r2.getRangeDrift());
    EXPECT_DOUBLE_EQ(r1.getAzimuthDrift(), r2.getAzimuthDrift());
    EXPECT_EQ(r1.getStatus(), r2.getStatus());
    EXPECT_EQ(r1.getType(), r2.getType());
}

TEST(RadarTest, HandlesExtremeCoordinates) {
    Radar radar(
        999,
        "PolarRadar",
        90.0,    // North Pole latitude
        180.0,   // Max longitude
        10000.0, // High altitude
        10.0,
        359.9,
        RadarStatus::OFFLINE,
        RadarType::PHASED_ARRAY
        );

    EXPECT_EQ(radar.getId(), 999u);
    EXPECT_DOUBLE_EQ(radar.getLatitude(), 90.0);
    EXPECT_DOUBLE_EQ(radar.getLongitude(), 180.0);
    EXPECT_DOUBLE_EQ(radar.getAltitude(), 10000.0);
}
