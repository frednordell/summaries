#!/usr/bin/env bash

latest_tag=$(curl https://api.github.com/repos/frednordell/summaries/releases/latest | grep tag_name)
echo ${latest_tag:15:18}
sleep 5