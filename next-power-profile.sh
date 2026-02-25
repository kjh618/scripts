#!/bin/bash

asusctl profile --next && notify-send --app-name=asusctl --transient "$(asusctl profile --profile-get | grep '^Active profile is')"
