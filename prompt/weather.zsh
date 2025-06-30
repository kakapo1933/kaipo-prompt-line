# Weather
is_daytime() {
    local hour=$(date +%H)
    # Assuming daytime is 6 AM to 8 PM (06-20)
    if [[ $hour -ge 6 && $hour -lt 18 ]]; then
        return 0  # Day
    else
        return 1  # Night
    fi
}

get_weather_icon() {
    local condition="$1"
    # Convert to lowercase using tr instead
    condition=$(echo "$condition" | tr '[:upper:]' '[:lower:]')
    if is_daytime; then
      case "$condition" in
          *"clear"*|*"sunny"*)
              echo "󰖨 "
              ;;
          *"partly cloudy"*|*"few clouds"*)
             echo " "
              ;;
          *"cloud"*|*"overcast"*)
              echo "  "
              ;;
          *"rain"*|*"drizzle"*|*"shower"*)
              echo " "
              ;;
          *"snow"*|*"blizzard"*)
              echo " "
              ;;
          *"thunder"*|*"storm"*)
              echo " "
              ;;
          *"fog"*|*"mist"*|*"haze"*)
              echo "󰖑 "
              ;;
          *"wind"*)
              echo " "
              ;;
          *)
              echo " "  # Default thermometer
              ;;
      esac
    else
      case "$condition" in
          *"clear"*|*"sunny"*)
              echo " "
              ;;
          *"partly cloudy"*|*"few clouds"*)
              echo " "
              ;;
          *"cloud"*|*"overcast"*)
              echo "  "
              ;;
          *"rain"*|*"drizzle"*|*"shower"*)
              echo " "
              ;;
          *"snow"*|*"blizzard"*)
              echo " "
              ;;
          *"thunder"*|*"storm"*)
              echo " "
              ;;
          *"fog"*|*"mist"*|*"haze"*)
              echo "󰖑 "
              ;;
          *"wind"*)
              echo " "
              ;;
          *)
              echo " "  # Default thermometer
              ;;
      esac
    fi
}

temperature() {
  local cache_file="/tmp/temperature_cache"
    local cache_time=600  # 10 minutes in seconds
    
    # Check if cache exists and is recent
    if [[ ! -f "$cache_file" ]] || [[ $(($(date +%s) - $(stat -f %m "$cache_file" 2>/dev/null || echo 0))) -gt $cache_time ]]; then
      # Cache is old/missing, refresh it
      shortcuts run Terminal\ temperature 2> /dev/null | tr -d '\n' > "$cache_file"
    fi
    
    # Return cached content
  cat "$cache_file" 2>/dev/null
}

weather() {
  local cache_file="/tmp/weather_cache"
    local cache_time=0  # 10 minutes in seconds
    
    # Check if cache exists and is recent
    if [[ ! -f "$cache_file" ]] || [[ $(($(date +%s) - $(stat -f %m "$cache_file" 2>/dev/null || echo 0))) -gt $cache_time ]]; then
      # Cache is old/missing, refresh it
      local condition=$(shortcuts run Terminal\ weather 2> /dev/null | tr -d '\n')
      get_weather_icon "$condition" > "$cache_file"
    fi
    
    # Return cached content
  cat "$cache_file" 2>/dev/null
}
