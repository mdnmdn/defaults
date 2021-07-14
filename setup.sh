echo alias k=kubectl > ~/.ckad
echo 'export do="--dry-run=client -o yaml"'  >> ~/.ckad
echo 'export now="--grace-period 0 --force"'  >> ~/.ckad
echo "alias kn='kubectl config set-context --current --namespace '"  >> ~/.ckad
echo "alias kcur='kubectl config get-contexts | grep \* '"  >> ~/.ckad
kubectl completion bash >> ~/.ckad
echo complete -F __start_kubectl k >> ~/.ckad

echo source ~/.ckad >> ~/.bashrc

#"source <(kubectl completion bash)"
#complete -F __start_kubectl k # to make it work with the alias k


sudo apt-get install bash-completion
source ~/.bashrc

echo set shiftwidth=2 >> ~/.vimrc
echo set tabstop=2 >> ~/.vimrc
echo set expandtab >> ~/.vimrc
