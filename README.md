# ubuntu_php_selenuim

# Docker
Reference: https://codeception.com/docs/12-ParallelExecution

### If I need to run shell and then run tests inside conteiner:
```
docker-compose run --rm --workdir '/project/1dom_tests' --entrypoint bash codecept
codecept run acceptance
```

### If I need to run tests outside container (for example, from my Windows PowerShell):
```
docker-compose run --rm --workdir '/project/1dom_tests' codecept run acceptance
```


