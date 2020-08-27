# Rancher-Action
Github Action for using the Rancher CLI to manage resources with Rancher during an action.
Commands will be executed using the following syntax: `rancher {Supplied-Command}`

### Example Workflow file

A simple workflow file for simply listing the pods in a context is given below:

```yaml
jobs:
  rancher_job:
    runs-on: ubuntu-latest
    steps:
      - name: Rancher Action
        uses: colbyhill21/Rancher-Action@1.1
        with: 
          args: '"get pods"'
          token: ${{ secrets.TOKEN }}
          context: ${{ secrets.CONTEXT }}
          url: ${{ secrets.URL }}
```
          
## Inputs

- `token`: Rancher Token for logging in.
- `context`: Context of the project to access. (AKA Project ID)
- `url`: URL of the Rancher instance.
- `args`: Command you want to run. 

## License
Scripts and documentation in this project are released under the MIT license.
