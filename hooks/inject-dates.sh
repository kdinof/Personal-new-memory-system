#!/bin/bash
# Inject current date context into Claude's context via stdout

# macOS date calculations
TODAY=$(date +%Y-%m-%d)
YESTERDAY=$(date -v-1d +%Y-%m-%d)
TWO_DAYS_AGO=$(date -v-2d +%Y-%m-%d)
TOMORROW=$(date -v+1d +%Y-%m-%d)
TIMESTAMP=$(date "+%Y-%m-%d %H:%M")
WEEK_NUM=$(date +%W)
DAY_NUM=$(date +%u)

# Current week calculations (Mon-Sun of this week)
CURRENT_WEEK_MONDAY=$(date -v-Mon +%Y-%m-%d)
# If today is Sunday, -v-Mon gives today's week's Monday; otherwise it gives this week's Monday
# For Sunday calculation: go to Monday, then +6 days
CURRENT_WEEK_SUNDAY=$(date -v-Mon -v+6d +%Y-%m-%d)

# Previous week calculations
PREV_WEEK_NUM=$((WEEK_NUM - 1))
PREV_WEEK_MONDAY=$(date -v-Mon -v-7d +%Y-%m-%d)
PREV_WEEK_SUNDAY=$(date -v-Mon -v-1d +%Y-%m-%d)

# Determine which week to analyze for retrospective
# On Sunday (day 7) - analyze current week (it's ending)
# On other days - analyze previous week
if [ "$DAY_NUM" -eq 7 ]; then
  RETRO_WEEK_MONDAY=$CURRENT_WEEK_MONDAY
  RETRO_WEEK_SUNDAY=$CURRENT_WEEK_SUNDAY
  RETRO_WEEK_NUM=$WEEK_NUM
else
  RETRO_WEEK_MONDAY=$PREV_WEEK_MONDAY
  RETRO_WEEK_SUNDAY=$PREV_WEEK_SUNDAY
  RETRO_WEEK_NUM=$PREV_WEEK_NUM
fi

# Get day of week in Russian
case $DAY_NUM in
  1) DAY_OF_WEEK_RU="понедельник";;
  2) DAY_OF_WEEK_RU="вторник";;
  3) DAY_OF_WEEK_RU="среда";;
  4) DAY_OF_WEEK_RU="четверг";;
  5) DAY_OF_WEEK_RU="пятница";;
  6) DAY_OF_WEEK_RU="суббота";;
  7) DAY_OF_WEEK_RU="воскресенье";;
esac

# Output to stdout - Claude will see this in context
cat << EOF
# Current Date Context

TODAY: $TODAY ($DAY_OF_WEEK_RU)
YESTERDAY: $YESTERDAY
TWO_DAYS_AGO: $TWO_DAYS_AGO
TOMORROW: $TOMORROW
TIMESTAMP: $TIMESTAMP
WEEK: W$(printf "%02d" $WEEK_NUM)
PREVIOUS_WEEK: W$(printf "%02d" $PREV_WEEK_NUM)
PREVIOUS_WEEK_RANGE: $PREV_WEEK_MONDAY to $PREV_WEEK_SUNDAY
CURRENT_WEEK_RANGE: $CURRENT_WEEK_MONDAY to $CURRENT_WEEK_SUNDAY

# For weekly retrospective (auto-selects current week on Sunday, previous week otherwise)
RETRO_WEEK: W$(printf "%02d" $RETRO_WEEK_NUM)
RETRO_WEEK_RANGE: $RETRO_WEEK_MONDAY to $RETRO_WEEK_SUNDAY

For task deadlines today: 📅 $TODAY
For calendar query (retro): time_min="${RETRO_WEEK_MONDAY}T00:00:00Z" time_max="${RETRO_WEEK_SUNDAY}T23:59:59Z"
EOF

exit 0
