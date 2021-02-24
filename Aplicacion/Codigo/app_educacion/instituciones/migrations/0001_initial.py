# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Areas',
            fields=[
            ],
            options={
                'db_table': 'areas',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Carreras',
            fields=[
            ],
            options={
                'db_table': 'carreras',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='ClasificacionInstitucion',
            fields=[
            ],
            options={
                'db_table': 'clasificacion_institucion',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Instituciones',
            fields=[
            ],
            options={
                'db_table': 'instituciones',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='InstitucionesCarreras',
            fields=[
            ],
            options={
                'db_table': 'instituciones_carreras',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='InstitucionesJornada',
            fields=[
            ],
            options={
                'db_table': 'instituciones_jornada',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='InstitucionesModalidades',
            fields=[
            ],
            options={
                'db_table': 'instituciones_modalidades',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='InstitucionesNiveles',
            fields=[
            ],
            options={
                'db_table': 'instituciones_niveles',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Jornada',
            fields=[
            ],
            options={
                'db_table': 'jornada',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Modalidades',
            fields=[
            ],
            options={
                'db_table': 'modalidades',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Niveles',
            fields=[
            ],
            options={
                'db_table': 'niveles',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='TipoInstitucion',
            fields=[
            ],
            options={
                'db_table': 'tipo_institucion',
                'managed': False,
            },
            bases=(models.Model,),
        ),
    ]
