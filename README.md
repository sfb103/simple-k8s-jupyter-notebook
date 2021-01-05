# simple-k8s-jupyter-notebook
A simple kubernetes deployment for a minimal jupyter notebook with octave

This project works well for a simple deployment, such as a DIY homelab setup, where you'd like to run a minimal jupyter notebook with octave on a kubernetes cluster. This extends the [jupyter/minimal-notebook](https://hub.docker.com/r/jupyter/minimal-notebook) container image by installing the [octave-kernel](https://pypi.org/project/octave-kernel/).  By running this engine in a container, it offers better isolation from it's host. And by running it on kubernetes, it provides a declartative deployment and rohbustness features, such as liveness probes.

To build the jupyter notebook container image, simply run:
```
./build.sh
```

Then, to run this deployment on the kubernetes cluster, simply:
```
kubectl apply -f jupyter.yaml
```
**Note**, The jupyter notebook deployment currently assumes it's persistent data is kept in the ```/volumes/jupyter-home/octave``` host directory.  And the web-client is currently explosed through a cluster ```nodePort: 8888```

Once the jupyter-octave pod is ready on the cluster, you can navigate to the web-client using the node-port specified above. Once the web-client is accessed, follow the documentation on the jupyter and octave web pages for more instructions.
