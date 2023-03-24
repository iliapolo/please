from setuptools import setup

BASE_PACKAGE_NAME = 'devbox'

setup(
  name=BASE_PACKAGE_NAME,
  version='0.0.1',
  packages=[
    BASE_PACKAGE_NAME,
    '{0}.shell'.format(BASE_PACKAGE_NAME),
    '{0}.api'.format(BASE_PACKAGE_NAME),
  ],
  entry_points={
    'console_scripts': [
      '{0} = {0}.shell.main:app'.format(BASE_PACKAGE_NAME)
    ]
  },
  install_requires=[
    'click==8.1.3',
  ],
)