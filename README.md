## Code for The Annotated Transformer:
http://nlp.seas.harvard.edu/2018/04/03/attention.html

Authors: Alexander Rush (@harvardnlp or srush@seas.harvard.edu), with help from Vincent Nguyen and Guillaume Klein. Modified by Michel Galley to make it work with PyTorch 1.3.

## Setup

Assuming you have PyTorch 1.3 already installed, please run this before loading the notebook:

```
pip install -r requirements.txt
wget https://s3.amazonaws.com/opennmt-models/iwslt.pt
python -m spacy download en
python -m spacy download de
```

Then, you *should* be able to `Run All` cells in one pass without any error.

## Changes

The code differs from the original Annotated Transformer in the following ways:
* Runs on PyTorch 1.3 (original code was for version 0.3);
* As the original en-de OpenNMT doesn't load in recent versions of PyTorch, the last part of the notebook (analysis of attention weights, etc.) uses an IWSLT rather than WMT model;
* Removed some deprecations when possible.
* Fixed seed for reproducibility.
* Decoding with different examples.

Detailed changes are listed in `annotated_transformer.nbdiff`.

## Credit

If you use this for anything, please give credit to [Alexander Rush](http://rush-nlp.com/). Here is a paper you can cite:

```
@inproceedings{opennmt,
  author    = {Guillaume Klein and
               Yoon Kim and
               Yuntian Deng and
               Jean Senellart and
               Alexander M. Rush},
  title     = {OpenNMT: Open-Source Toolkit for Neural Machine Translation},
  booktitle = {Proc. ACL},
  year      = {2017},
  url       = {https://doi.org/10.18653/v1/P17-4012},
  doi       = {10.18653/v1/P17-4012}
}
```
