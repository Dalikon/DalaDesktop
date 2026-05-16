#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# weather info from wttr. https://github.com/chubin/wttr.in
# Remember to add city

city="brno"
cachedir="$HOME/.cache/rbn"
cachefile="$cachedir/${0##*/}-$1"

if [ ! -d "$cachedir" ]; then
    mkdir -p "$cachedir"
fi

if [ ! -f "$cachefile" ]; then
    touch "$cachefile"
fi

cacheage=$(($(date +%s) - $(stat -c '%Y' "$cachefile")))
if [ "$cacheage" -gt 1740 ] || [ ! -s "$cachefile" ]; then
    raw=$(curl -s --max-time 10 "https://en.wttr.in/${city}${1}?0qnT" 2>&1)
    if [ -z "$raw" ]; then
        # Network failure — keep stale cache if available, otherwise show nothing
        if [ ! -s "$cachefile" ]; then
            echo '{"text":"? ", "alt":"", "tooltip":"Weather unavailable"}'
            exit 0
        fi
    else
        IFS=$'\n' data=($raw)
        echo "${data[0]}" | cut -f1 -d, > "$cachefile"
        echo "${data[1]}" | sed -E 's/^.{15}//' >> "$cachefile"
        echo "${data[2]}" | sed -E 's/^.{15}//' >> "$cachefile"
    fi
fi

IFS=$'\n' weather=($(cat "$cachefile"))
IFS=

if [ -z "${weather[0]}" ]; then
    echo '{"text":"? ", "alt":"", "tooltip":"Weather unavailable"}'
    exit 0
fi

temperature=$(echo "${weather[2]}" | sed -E 's/([[:digit:]]+)\.\./\1 to /g')

case $(echo "${weather[1]##*,}" | tr '[:upper:]' '[:lower:]') in
"clear" | "sunny")
    condition=""
    ;;
"partly cloudy")
    condition="󰖕"
    ;;
"cloudy")
    condition=""
    ;;
"overcast")
    condition=""
    ;;
"fog" | "freezing fog")
    condition=""
    ;;
"patchy rain possible" | "patchy light drizzle" | "light drizzle" | "patchy light rain" | "light rain" | "light rain shower" | "mist" | "rain")
    condition="󰼳"
    ;;
"moderate rain at times" | "moderate rain" | "heavy rain at times" | "heavy rain" | "moderate or heavy rain shower" | "torrential rain shower" | "rain shower")
    condition=""
    ;;
"patchy snow possible" | "patchy sleet possible" | "patchy freezing drizzle possible" | "freezing drizzle" | "heavy freezing drizzle" | "light freezing rain" | "moderate or heavy freezing rain" | "light sleet" | "ice pellets" | "light sleet showers" | "moderate or heavy sleet showers")
    condition="󰼴"
    ;;
"blowing snow" | "moderate or heavy sleet" | "patchy light snow" | "light snow" | "light snow showers")
    condition="󰙿"
    ;;
"blizzard" | "patchy moderate snow" | "moderate snow" | "patchy heavy snow" | "heavy snow" | "moderate or heavy snow with thunder" | "moderate or heavy snow showers")
    condition=""
    ;;
"thundery outbreaks possible" | "patchy light rain with thunder" | "moderate or heavy rain with thunder" | "patchy light snow with thunder")
    condition=""
    ;;
*)
    condition="?"
    ;;
esac

echo -e "{\"text\":\"$temperature $condition\", \"alt\":\"${weather[0]}\", \"tooltip\":\"${weather[0]}: $temperature ${weather[1]}\"}"

echo -e " $temperature  \n$condition ${weather[1]}" > "$HOME/.cache/.weather_cache"
