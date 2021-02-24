# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [app_label]'
# into your database.
from __future__ import unicode_literals

from django.db import models


class Areas(models.Model):
    id_area = models.IntegerField(primary_key=True)
    area = models.CharField(max_length=100, blank=True)

    class Meta:
        managed = False
        db_table = 'areas'


class AuthGroup(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    name = models.CharField(unique=True, max_length=80)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    group = models.ForeignKey(AuthGroup)
    permission = models.ForeignKey('AuthPermission')

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'


class AuthPermission(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    name = models.CharField(max_length=50)
    content_type = models.ForeignKey('DjangoContentType')
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'


class AuthUser(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField()
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=30)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    email = models.CharField(max_length=75)
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    user = models.ForeignKey(AuthUser)
    group = models.ForeignKey(AuthGroup)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'


class AuthUserUserPermissions(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    user = models.ForeignKey(AuthUser)
    permission = models.ForeignKey(AuthPermission)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'


class Carreras(models.Model):
    id_carrera = models.IntegerField(primary_key=True)
    carrera = models.CharField(max_length=100, blank=True)
    titulo = models.CharField(max_length=100, blank=True)
    num_ciclos = models.IntegerField(blank=True, null=True)
    id_area = models.ForeignKey(Areas, db_column='id_area', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'carreras'


class ClasificacionInstitucion(models.Model):
    id_clasificacion_institucion = models.IntegerField(primary_key=True)
    clasificacion_institucion = models.CharField(max_length=30, blank=True)

    class Meta:
        managed = False
        db_table = 'clasificacion_institucion'


class CuentasUsuario(models.Model):
    id_institucion = models.ForeignKey('Instituciones', db_column='id_institucion')
    user = models.CharField(max_length=20, blank=True)
    pass_field = models.CharField(db_column='pass', max_length=20, blank=True)  # Field renamed because it was a Python reserved word.

    class Meta:
        managed = False
        db_table = 'cuentas_usuario'


class DjangoAdminLog(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', blank=True, null=True)
    user = models.ForeignKey(AuthUser)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    name = models.CharField(max_length=100)
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'


class DjangoMigrations(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Instituciones(models.Model):
    id_institucion = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=200, blank=True)
    direccion = models.CharField(max_length=250, blank=True)
    telefono = models.IntegerField(blank=True, null=True)
    mensualidad = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    matricula = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    id_tipo_institucion = models.ForeignKey('TipoInstitucion', db_column='id_tipo_institucion', blank=True, null=True)
    id_clasificacion_institucion = models.ForeignKey(ClasificacionInstitucion, db_column='id_clasificacion_institucion', blank=True, null=True)
    latitud = models.CharField(max_length=20, blank=True)
    longitud = models.CharField(max_length=20, blank=True)
    pagina_web = models.CharField(max_length=100, blank=True)
    cant_profesores_m = models.IntegerField(blank=True, null=True)
    cant_profesores_f = models.IntegerField(blank=True, null=True)
    cant_alumnos_m = models.IntegerField(blank=True, null=True)
    cant_alumnos_f = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'instituciones'


class InstitucionesCarreras(models.Model):
    id_institucion = models.ForeignKey(Instituciones, db_column='id_institucion', blank=True, null=True)
    id_carrera = models.ForeignKey(Carreras, db_column='id_carrera', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'instituciones_carreras'


class InstitucionesModalidades(models.Model):
    id_institucion = models.ForeignKey(Instituciones, db_column='id_institucion', blank=True, null=True)
    id_modalidad = models.ForeignKey('Modalidades', db_column='id_modalidad', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'instituciones_modalidades'


class InstitucionesNiveles(models.Model):
    id_institucion = models.ForeignKey(Instituciones, db_column='id_institucion', blank=True, null=True)
    id_nivel = models.ForeignKey('Niveles', db_column='id_nivel', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'instituciones_niveles'


class Modalidades(models.Model):
    id_modalidad = models.IntegerField(primary_key=True)
    modalidad = models.CharField(max_length=15, blank=True)

    class Meta:
        managed = False
        db_table = 'modalidades'


class Niveles(models.Model):
    id_nivel = models.IntegerField(primary_key=True)
    nivel = models.CharField(max_length=20, blank=True)
    edad = models.CharField(max_length=10, blank=True)

    class Meta:
        managed = False
        db_table = 'niveles'


class TipoInstitucion(models.Model):
    id_tipo_institucion = models.IntegerField(primary_key=True)
    tipo = models.CharField(max_length=50, blank=True)

    class Meta:
        managed = False
        db_table = 'tipo_institucion'
