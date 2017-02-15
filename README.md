
# php_cache Step
Php cache

### INPUTS
* `FLOW_ENABLE_CACHE` - 

## EXAMPLE 

```yml
steps:
  - name: php_cache
    enable: true
    failure: true
    plugin:
      name: php_cache
      inputs:
        - FLOW_ENABLE_CACHE=$FLOW_ENABLE_CACHE
```
