#include <cpinti/chrono/datetime.hpp>
#include <cpinti/core/rtc.hpp>

namespace cpinti::chrono
{
    DateTime DateTime::now()
    {
        return cpinti::core::get_rtc();
    }
}