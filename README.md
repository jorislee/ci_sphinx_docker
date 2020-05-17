# Sphinx compilation environment docker

Based on python: 3.7.6 configure sphinx compilation environment docker.
The docker can be used to verify the reliability of the document hosting readthedocs.

## Dockerfile

  ``` shell
  #python3
  FROM python:3.7.6

  MAINTAINER The python Project <lqq@sioiot.com>

  ADD requirements.txt /opt/requirements.txt 
  RUN python -m pip --no-cache-dir install --upgrade pip && pip --no-cache-dir install -r /opt/requirements.txt
  ```

## Requirements.txt

  ``` python
  # This is a list of python packages used to generate documentation. This file is used with pip:
  # pip install --user -r requirements.txt
  #
  sphinx>=1.8.4
  breathe==4.11.1
  sphinx-rtd-theme
  sphinx-notfound-page
  sphinxcontrib-blockdiag>=1.5.5, <2.0.0
  sphinxcontrib-seqdiag>=0.8.5, <2.0.0
  sphinxcontrib-actdiag>=0.8.5, <2.0.0
  sphinxcontrib-nwdiag>=0.9.5, <2.0.0
  blockdiag>=1.5.4, <2.0.0
  seqdiag>=0.9.6, <2.0.0
  actdiag>=0.5.4, <2.0.0
  nwdiag>=1.0.4, <2.0.0
  recommonmark>=0.6.0
  ```

## License

MIT License.

## Acknowledgments

* Stackoverflow
