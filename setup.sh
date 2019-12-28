#!/bin/bash

# Run this before using the notebook:

pip install -r requirements.txt
wget https://s3.amazonaws.com/opennmt-models/iwslt.pt
python -m spacy download en
python -m spacy download de
