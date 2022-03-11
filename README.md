# 通过 `pyenv` 管理  `python`

A python pure virtual env for every single project

##

仅运行，不安装：
```python
pipx run pycowsay moooo
```

## python 版本切换

pyenv global 2.7.3  # 设置全局的 Python 版本，通过将版本号写入 ~/.pyenv/version 文件的方式。
pyenv local 2.7.3 # 设置 Python 本地版本，通过将版本号写入当前目录下的 .python-version 文件的方式。通过这种方式设置的 Python 版本优先级较 global 高。

需同在寻找 python 的时候优先级

```shell
shell > local > global
```

pyenv shell 2.7.3 # 设置面向 shell 的 Python 版本，通过设置当前 shell 的 PYENV_VERSION 环境变量的方式。这个版本的优先级比 local 和 global 都要高。`--unset` 参数可以用于取消当前 shell 设定的版本。

pyenv shell --unset

pyenv rehash  # 创建垫片路径（为所有已安装的可执行文件创建 shims，如：~/.pyenv/versions/*/bin/*，因此，每当你增删了 Python 版本或带有可执行文件的包（如 pip）以后，都应该执行一次本命令）



## 生成版本依赖库和安装依赖库

1. 生成依赖库

```shell
pip freeze > requirements.txt
```

2. 安装依赖库

```shell
pip install -r requirements.txt
```

**当然，更建议大家手动去添加依赖库及版本**，这样可以使用 `>=` 而不是 `==` 不指定具体版本，兼容性质更好。

## NOTES
- [Python: Python 多版本管理](https://magicjackting.pixnet.net/blog/post/225113189-python:-python-%E5%A4%9A%E7%89%88%E6%9C%AC%E7%AE%A1%E7%90%86)
- [Python: Python 虚拟环境](https://magicjackting.pixnet.net/blog/post/225049637)
