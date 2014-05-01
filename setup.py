#!/usr/bin/env python
# -*- coding: UTF-8 -*-

# Copyright (C) 2014  Avencall
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.


from setuptools import setup, find_packages


setup(
    name='xivo-db',
    version='0.1',
    description='XIVO DB LIB',
    author='Avencall',
    author_email='xivo-dev@lists.proformatique.com',
    url='http://git.xivo.fr/',
    license='GPLv3',
    packages=find_packages('.')
)
