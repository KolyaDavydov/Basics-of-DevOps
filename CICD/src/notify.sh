#!/bin/bash
TELEGRAM_BOT_TOKEN="6351659682:AAEtm5RRq7Ck7kwYWvo6m3BiKH2KCVl_txE"
TELEGRAM_USER_ID="156215020"
URL="https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage"
TEXT="Статус: $1%0A%0AПроект:+$CI_PROJECT_NAME%0AСтатус:+$CI_JOB_STATUS%0AURL:+$CI_PROJECT_URL/pipelines/$CI_PIPELINE_ID/%0AВетка:+$CI_COMMIT_REF_SLUG"

curl -s -d "chat_id=$TELEGRAM_USER_ID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null