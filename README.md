# ubuntu_php_selenuim

# Docker
Reference: https://codeception.com/docs/12-ParallelExecution

### If I need to run tests outside container (for example, from my Windows PowerShell):
```
docker-compose run --rm --workdir "/project/1dom_tests" codecept run acceptance
```

### If I need to run shell and then run tests inside container:
```
docker-compose run --rm --workdir "/project/1dom_tests" --entrypoint bash codecept
codecept run acceptance
```

### If I want to see what's happening with browser
Windows:
Install VNC viewer: https://www.realvnc.com/en/connect/download/viewer/windows/
Create connection to firefox container: 127.0.0.1, password: secret

Mac:
Run shell command:
```
open vnc://:secret@127.0.0.1:5900
```



