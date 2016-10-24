#!/usr/bin/env python
from setuptools import find_packages, setup

setup(
      name='servicea',
      version='0.0.1',
      description='Just be stupid',
      packages=find_packages(exclude=['test', 'test.*']),
      install_requires=[
                        'nameko==2.4.2',
                        ],
      extras_require={
      'dev': [
              'pytest==2.9.2',
              ],
      },
      zip_safe=True
)
