#ifndef TRACKEH_H
#define TRACKEH_H

#include <string>
#include <cmath>
#ifndef M_PI
constexpr double M_PI = 3.14159265358979323846;
#endif

#include <atomic>

struct Position {
    double lat;
    double lon;

    Position(double lat, double lon) : lat(lat), lon(lon) {}

    // Haversine formula for distance (GIS example)
    double distanceTo(const Position& other) const {
        const double R = 6371e3;  // Earth radius in meters
        double dLat = (other.lat - lat) * M_PI / 180.0;
        double dLon = (other.lon - lon) * M_PI / 180.0;
        double a = std::sin(dLat / 2) * std::sin(dLat / 2) +
                   std::cos(lat * M_PI / 180.0) * std::cos(other.lat * M_PI / 180.0) *
                       std::sin(dLon / 2) * std::sin(dLon / 2);
        double c = 2 * std::atan2(std::sqrt(a), std::sqrt(1 - a));
        return R * c;
    }
};

class Track final
{
public:
    Track(const std::string& name, const Position& pos, double vel)
        : id_(generateNextId()), name_(name), position_(pos), velocity_(vel) {}

    virtual ~Track() = default;  // For polymorphism (LSP)

    uint64_t getId() const { return id_; }
    const Position& getPosition() const { return position_; }
    void updatePosition(const Position& newPos) { position_ = newPos; }  // Mutable for tracking

private:
    static uint64_t generateNextId() {
        static std::atomic<uint64_t> counter{1};
        return counter.fetch_add(1);
    }

    uint64_t id_;
    std::string name_;
    Position position_;
    double velocity_;
};

#endif // TRACKEH_H
