# ProtoTest

This project provide a simple sample using Android.mk to build proto file under Android java structure.

# if define package and class in proto as below

option java_package = "com.android.launcher3.backup";
option java_outer_classname = "BackupProtos";

# for Android N, import type should be like:

import com.android.launcher3.backup.BackupProtos;

# for Andorid O, import type should be like:

import com.android.launcher3.backup.nano.BackupProtos;


