#ifndef CPINTI_DATETIME_HPP
#define CPINTI_DATETIME_HPP

#include <cstdint>
#include <iostream>

namespace cpinti::chrono
{
    class DateTime
    {
    private:
        uint8_t m_day;
        uint8_t m_month;
        uint16_t m_year;
        uint8_t m_seconds;
        uint8_t m_minutes;
        uint8_t m_hours;

    public:
        DateTime(char seconds, char minutes, char hours, char day, char month, char year) : m_seconds(seconds), m_minutes(minutes), m_hours(hours), m_day(day), m_month(month), m_year(year)
        {}
        virtual ~DateTime(){};

        friend std::ostream &operator<<(std::ostream &os, DateTime const &dt)
        {
            os << dt.m_hours << ":" << dt.m_minutes << ":" << dt.m_seconds;
            return os;
        }

        static DateTime now();
    };

} // namespace cpinti::chrono

#endif