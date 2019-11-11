# node-demo
A simple demo to demonstrate integratio  with CI


### Building your image
`docker build -t <your username>/node-web-app:v0.1 .`

### Run the image
`docker run -p 49160:8080 -d <your username>/node-web-app`

### Pipeline

- add github action   
[doc link](https://help.github.com/cn/actions/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#usage-limits)

`mkdir -p .github/workflows && cd $_ && touch pipeline.yml`
> `$_` 变量记录了上一个命令的最后一个参数的值（如果没有参数，则是命令本身）


- add gitlab ci

`touch .gitlab-ci.yml`

## to be done

pipeline 中使用curl 命令报错
```bash
    - name: curl test 8080
      uses: wei/curl@master
      with:
        args: http://localhost:8080
```

报错：
```bash
Run wei/curl@master
/usr/bin/docker run --name d6a98cc892b8c497a87491ef84a5c1555_2a4867 --label 10865d --workdir /github/workspace --rm -e INPUT_ARGS -e HOME -e GITHUB_REF -e GITHUB_SHA -e GITHUB_REPOSITORY -e GITHUB_ACTOR -e GITHUB_WORKFLOW -e GITHUB_HEAD_REF -e GITHUB_BASE_REF -e GITHUB_EVENT_NAME -e GITHUB_WORKSPACE -e GITHUB_ACTION -e GITHUB_EVENT_PATH -e RUNNER_OS -e RUNNER_TOOL_CACHE -e RUNNER_TEMP -e RUNNER_WORKSPACE -e ACTIONS_RUNTIME_URL -e ACTIONS_RUNTIME_TOKEN -e GITHUB_ACTIONS=true -v "/var/run/docker.sock":"/var/run/docker.sock" -v "/home/runner/work/_temp/_github_home":"/github/home" -v "/home/runner/work/_temp/_github_workflow":"/github/workflow" -v "/home/runner/work/node-demo/node-demo":"/github/workspace" 10865d:6a98cc892b8c497a87491ef84a5c1555 http://localhost:8080
curl: (7) Failed to connect to localhost port 8080: Connection refused
##[error]Docker run failed with exit code 7
```

---

More ref:
- https://nodejs.org/en/docs/guides/
- [github action docker](https://help.github.com/cn/actions/automating-your-workflow-with-github-actions/creating-a-docker-container-action)