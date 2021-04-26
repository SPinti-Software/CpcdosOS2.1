#ifndef CPINTI_DATETIME_HPP
#define CPINTI_DATETIME_HPP

#include <iostream>

namespace cpinti
{
    class Datetime
    {
    private:
        char m_day_of_month;
        char m_month;
        char m_year;

    public:
        char m_seconds;
        char m_minutes;
        char m_hours;

        Datetime(char seconds, char minutes, char hours, char day_of_month, char month, char year) : m_seconds(seconds), m_minutes(minutes), m_hours(hours), m_day_of_month(day_of_month), m_month(month), m_year(year)
        {
            m_year += 1900;
        }
        virtual ~Datetime(){};

        friend std::ostream &operator<<(std::ostream &os, Datetime const &dt)
        {
            os << (int)dt.m_hours << ":" << (int)dt.m_minutes << ":" << (int)dt.m_seconds;
            os << " rtc yay";
            return os;
        }
    };

} // namespace cpinti

#endif