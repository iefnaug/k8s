### 命令
```shell
#加载镜像
sudo k3s ctr images import demo-1.0.tar
#将管理的pod数量变成0
kubectl scale deployment demo --replicas=0 -n dev
#伸缩
kubectl scale deployment demo --replicas=0
```
