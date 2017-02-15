# ************************************************************
#
# This step will enable/disable cache
#
#   Variables used:
#     $FLOW_ENABLE_CACHE
#     $FLOW_VERSION
#
#   Outputs:
#     $FLOW_ENABLE_CACHE
#
# ************************************************************

if [[ $FLOW_ENABLE_CACHE == 'TRUE' ]]; then
  echo 'start php cache'
  FLOW_CACHE_PATH="$CACHE_BASE_URL/$FLOW_VERSION/.composer/vendor"
  if [[ -d $FLOW_CACHE_PATH ]]; then
    echo "cache exists"
  else
    echo "cache not exists"
    mkdir -p $FLOW_CACHE_PATH
  fi
  ln -s $FLOW_CACHE_PATH $FLOW_CURRENT_PROJECT_PATH
else
  echo 'cache disabled'
fi
