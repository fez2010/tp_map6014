# TP_MAP6014
Prédiction du risque de départ d'un employer a l'aide du dataset [turnover.csv](./datasets/turnover.csv) et [turnover_prepared.csv](./datasets/turnover_prepared.csv). Vous trouverez si join le [code source](./TP_MAP6009.ipynb) des expérimentations du [Rapport]() .

- [Description du dataset](#description-du-dataset)
- [Avant de Commencer le Travail](#avant-de-commencer-le-travail)
    - [Créer un environnement virtuel python](#creer-un-environnement-virtuel-pythoncreer-)
    - [Lancer L'environnement Python](#lancer-lenvironnement-python)
    - [Installer jupyter et jupyter kernel](#installer-jupyter-et-jupyter-kernel)
    - [Créer et installer un nouveau kernel jupyter](#creer-et-installer-un-nouveau-kernel-jupyter)
- [Lancer le code source](#lancer-le-code-source)
- [Resultats obtenus](#resultats-obtenus)
- [Références](#references)
## Description du dataset

## Avant de Commencer le Travail
### Créer un environnement virtuel python
`conda create --name tp_map6014 python=3.8`
### Lancer L'environnement Python 
`conda activate tp_map6014`
### Installer jupyter et jupyter kernel
```
conda install jupyter
conda install ipython
conda install ipykernel
pip install bash_kernel
```
### Créer et installer un nouveau kernel jupyter 
```
ipython kernel install --user --name=tp_map6014
python -m ipykernel install --user --name=tp_map6014
python -m bash_kernel.install
```
## Lancer le code source
`jupyter execute TP_MAP6009.ipynb --allow-errors`
## Resultats obtenus

## Références
* [venv installations and kernel creation](https://medium.com/@WamiqRaza/how-to-create-virtual-environment-jupyter-kernel-python-6836b50f4bf4)
* [Theme](./theme/AdobeColor-My%20Color%20Theme-3.jpeg)
* [Latex](https://guides.nyu.edu/LaTeX/installation)