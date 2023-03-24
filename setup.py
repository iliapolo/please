from setuptools import setup

BASE_PACKAGE_NAME = 'please'

setup(
  name=BASE_PACKAGE_NAME,
  version='0.0.1',
  packages=[
    BASE_PACKAGE_NAME,
    '{0}.shell'.format(BASE_PACKAGE_NAME),
  ],
  entry_points={
    'console_scripts': [
      '{0} = {0}.shell.main:app'.format(BASE_PACKAGE_NAME)
    ]
  },
  install_requires=[
    'click==8.1.3',
    'boto3==1.26.98'
  ],
)