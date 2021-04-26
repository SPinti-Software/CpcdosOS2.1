#include <cpinti/core/ioport.hpp>
#include <cpinti/datetime.hpp>

namespace cpinti::core
{
    enum
    {
        CMOS_ADDRESS = 0x70,
        CMOS_DATA = 0x71,

        CMOS_RTC_REG_SECONDS = 0x00,
        CMOS_RTC_REG_MINUTES = 0x02,
        CMOS_RTC_REG_HOURS = 0x04,
        CMOS_RTC_REG_DAY = 0x07,
        CMOS_RTC_REG_MONTH = 0x08,
        CMOS_RTC_REG_YEAR = 0x09,

        CMOS_RTC_REG_STATUS_A = 0x0A,
        CMOS_RTC_REG_STATUS_B = 0x0B
    };

    static bool cmos_wait()
    {
        outb(CMOS_ADDRESS, CMOS_RTC_REG_STATUS_A);
        return (inb(CMOS_DATA) & 0x80);
    }

    static uint8_t cmos_get_from_reg(uint8_t reg)
    {
        outb(CMOS_ADDRESS, reg);
        return inb(CMOS_DATA);
    }

    static inline uint8_t bcd_to_bin(uint8_t val)
    {
        return (val & 0x0F) + ((val / 16) * 10);
    }

    cpinti::Datetime get_rtc()
    {
        while (cmos_wait())
            /* do nothing */;

        uint8_t seconds = cmos_get_from_reg(CMOS_RTC_REG_SECONDS);
        uint8_t minutes = cmos_get_from_reg(CMOS_RTC_REG_MINUTES);
        uint8_t hours = cmos_get_from_reg(CMOS_RTC_REG_HOURS);
        uint8_t day = cmos_get_from_reg(CMOS_RTC_REG_DAY);
        uint8_t month = cmos_get_from_reg(CMOS_RTC_REG_MONTH);
        uint8_t year = cmos_get_from_reg(CMOS_RTC_REG_YEAR);

        uint8_t register_b = cmos_get_from_reg(CMOS_RTC_REG_STATUS_B);

        if (!(register_b & 0x04))
        {
            seconds = bcd_to_bin(seconds);
            minutes = bcd_to_bin(minutes);

            /* special case for hours */
            hours = ((hours & 0x0F) + (((hours & 0x70) / 16) * 10)) | (hours & 0x80);

            day = bcd_to_bin(day);
            month = bcd_to_bin(month);
            year = bcd_to_bin(year);
        }

        // if necessary convert 12H to 24H
        if (!(register_b & 0x02) && (hours & 0x80))
        {
            hours = ((hours & 0x7F) + 12) % 24;
        }

        return cpinti::Datetime(seconds, minutes, hours, day, month, year);
    }
} // namespace cpinti::core