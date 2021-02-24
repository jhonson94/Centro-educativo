# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('instituciones', '0002_authgroup_authgrouppermissions_authpermission_authuser_authusergroups_authuseruserpermissions_cuenta'),
    ]

    operations = [
        migrations.DeleteModel(
            name='InstitucionesJornada',
        ),
        migrations.DeleteModel(
            name='Jornada',
        ),
    ]
