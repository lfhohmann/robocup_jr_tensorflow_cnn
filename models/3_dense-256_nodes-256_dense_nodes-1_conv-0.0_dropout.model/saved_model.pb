??	
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??
?
conv2d_86/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nameconv2d_86/kernel
~
$conv2d_86/kernel/Read/ReadVariableOpReadVariableOpconv2d_86/kernel*'
_output_shapes
:?*
dtype0
u
conv2d_86/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_86/bias
n
"conv2d_86/bias/Read/ReadVariableOpReadVariableOpconv2d_86/bias*
_output_shapes	
:?*
dtype0
~
dense_166/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?b?*!
shared_namedense_166/kernel
w
$dense_166/kernel/Read/ReadVariableOpReadVariableOpdense_166/kernel* 
_output_shapes
:
?b?*
dtype0
u
dense_166/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_166/bias
n
"dense_166/bias/Read/ReadVariableOpReadVariableOpdense_166/bias*
_output_shapes	
:?*
dtype0
~
dense_167/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_167/kernel
w
$dense_167/kernel/Read/ReadVariableOpReadVariableOpdense_167/kernel* 
_output_shapes
:
??*
dtype0
u
dense_167/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_167/bias
n
"dense_167/bias/Read/ReadVariableOpReadVariableOpdense_167/bias*
_output_shapes	
:?*
dtype0
~
dense_168/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_168/kernel
w
$dense_168/kernel/Read/ReadVariableOpReadVariableOpdense_168/kernel* 
_output_shapes
:
??*
dtype0
u
dense_168/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_168/bias
n
"dense_168/bias/Read/ReadVariableOpReadVariableOpdense_168/bias*
_output_shapes	
:?*
dtype0
}
dense_169/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?!*!
shared_namedense_169/kernel
v
$dense_169/kernel/Read/ReadVariableOpReadVariableOpdense_169/kernel*
_output_shapes
:	?!*
dtype0
t
dense_169/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*
shared_namedense_169/bias
m
"dense_169/bias/Read/ReadVariableOpReadVariableOpdense_169/bias*
_output_shapes
:!*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv2d_86/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdam/conv2d_86/kernel/m
?
+Adam/conv2d_86/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_86/kernel/m*'
_output_shapes
:?*
dtype0
?
Adam/conv2d_86/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_86/bias/m
|
)Adam/conv2d_86/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_86/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_166/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?b?*(
shared_nameAdam/dense_166/kernel/m
?
+Adam/dense_166/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_166/kernel/m* 
_output_shapes
:
?b?*
dtype0
?
Adam/dense_166/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_166/bias/m
|
)Adam/dense_166/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_166/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_167/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_167/kernel/m
?
+Adam/dense_167/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_167/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_167/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_167/bias/m
|
)Adam/dense_167/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_167/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_168/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_168/kernel/m
?
+Adam/dense_168/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_168/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_168/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_168/bias/m
|
)Adam/dense_168/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_168/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_169/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?!*(
shared_nameAdam/dense_169/kernel/m
?
+Adam/dense_169/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_169/kernel/m*
_output_shapes
:	?!*
dtype0
?
Adam/dense_169/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*&
shared_nameAdam/dense_169/bias/m
{
)Adam/dense_169/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_169/bias/m*
_output_shapes
:!*
dtype0
?
Adam/conv2d_86/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdam/conv2d_86/kernel/v
?
+Adam/conv2d_86/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_86/kernel/v*'
_output_shapes
:?*
dtype0
?
Adam/conv2d_86/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_86/bias/v
|
)Adam/conv2d_86/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_86/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_166/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?b?*(
shared_nameAdam/dense_166/kernel/v
?
+Adam/dense_166/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_166/kernel/v* 
_output_shapes
:
?b?*
dtype0
?
Adam/dense_166/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_166/bias/v
|
)Adam/dense_166/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_166/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_167/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_167/kernel/v
?
+Adam/dense_167/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_167/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_167/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_167/bias/v
|
)Adam/dense_167/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_167/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_168/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_168/kernel/v
?
+Adam/dense_168/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_168/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_168/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_168/bias/v
|
)Adam/dense_168/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_168/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_169/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?!*(
shared_nameAdam/dense_169/kernel/v
?
+Adam/dense_169/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_169/kernel/v*
_output_shapes
:	?!*
dtype0
?
Adam/dense_169/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*&
shared_nameAdam/dense_169/bias/v
{
)Adam/dense_169/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_169/bias/v*
_output_shapes
:!*
dtype0

NoOpNoOp
?;
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?;
value?:B?: B?:
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
	optimizer
	regularization_losses

	variables
trainable_variables
	keras_api

signatures
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
 trainable_variables
!	keras_api
h

"kernel
#bias
$regularization_losses
%	variables
&trainable_variables
'	keras_api
h

(kernel
)bias
*regularization_losses
+	variables
,trainable_variables
-	keras_api
h

.kernel
/bias
0regularization_losses
1	variables
2trainable_variables
3	keras_api
?
4iter

5beta_1

6beta_2
	7decay
8learning_ratemlmmmnmo"mp#mq(mr)ms.mt/muvvvwvxvy"vz#v{(v|)v}.v~/v
 
F
0
1
2
3
"4
#5
(6
)7
.8
/9
F
0
1
2
3
"4
#5
(6
)7
.8
/9
?
9layer_metrics
	regularization_losses

	variables

:layers
;metrics
<non_trainable_variables
trainable_variables
=layer_regularization_losses
 
\Z
VARIABLE_VALUEconv2d_86/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_86/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
>layer_metrics
regularization_losses
	variables

?layers
@metrics
Anon_trainable_variables
trainable_variables
Blayer_regularization_losses
 
 
 
?
Clayer_metrics
regularization_losses
	variables

Dlayers
Emetrics
Fnon_trainable_variables
trainable_variables
Glayer_regularization_losses
 
 
 
?
Hlayer_metrics
regularization_losses
	variables

Ilayers
Jmetrics
Knon_trainable_variables
trainable_variables
Llayer_regularization_losses
\Z
VARIABLE_VALUEdense_166/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_166/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
Mlayer_metrics
regularization_losses
	variables

Nlayers
Ometrics
Pnon_trainable_variables
 trainable_variables
Qlayer_regularization_losses
\Z
VARIABLE_VALUEdense_167/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_167/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

"0
#1

"0
#1
?
Rlayer_metrics
$regularization_losses
%	variables

Slayers
Tmetrics
Unon_trainable_variables
&trainable_variables
Vlayer_regularization_losses
\Z
VARIABLE_VALUEdense_168/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_168/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

(0
)1

(0
)1
?
Wlayer_metrics
*regularization_losses
+	variables

Xlayers
Ymetrics
Znon_trainable_variables
,trainable_variables
[layer_regularization_losses
\Z
VARIABLE_VALUEdense_169/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_169/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

.0
/1

.0
/1
?
\layer_metrics
0regularization_losses
1	variables

]layers
^metrics
_non_trainable_variables
2trainable_variables
`layer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
1
0
1
2
3
4
5
6

a0
b1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	ctotal
	dcount
e	variables
f	keras_api
D
	gtotal
	hcount
i
_fn_kwargs
j	variables
k	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

c0
d1

e	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

g0
h1

j	variables
}
VARIABLE_VALUEAdam/conv2d_86/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_86/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_166/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_166/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_167/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_167/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_168/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_168/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_169/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_169/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_86/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_86/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_166/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_166/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_167/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_167/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_168/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_168/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_169/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_169/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_86_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_86_inputconv2d_86/kernelconv2d_86/biasdense_166/kerneldense_166/biasdense_167/kerneldense_167/biasdense_168/kerneldense_168/biasdense_169/kerneldense_169/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_862213
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_86/kernel/Read/ReadVariableOp"conv2d_86/bias/Read/ReadVariableOp$dense_166/kernel/Read/ReadVariableOp"dense_166/bias/Read/ReadVariableOp$dense_167/kernel/Read/ReadVariableOp"dense_167/bias/Read/ReadVariableOp$dense_168/kernel/Read/ReadVariableOp"dense_168/bias/Read/ReadVariableOp$dense_169/kernel/Read/ReadVariableOp"dense_169/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_86/kernel/m/Read/ReadVariableOp)Adam/conv2d_86/bias/m/Read/ReadVariableOp+Adam/dense_166/kernel/m/Read/ReadVariableOp)Adam/dense_166/bias/m/Read/ReadVariableOp+Adam/dense_167/kernel/m/Read/ReadVariableOp)Adam/dense_167/bias/m/Read/ReadVariableOp+Adam/dense_168/kernel/m/Read/ReadVariableOp)Adam/dense_168/bias/m/Read/ReadVariableOp+Adam/dense_169/kernel/m/Read/ReadVariableOp)Adam/dense_169/bias/m/Read/ReadVariableOp+Adam/conv2d_86/kernel/v/Read/ReadVariableOp)Adam/conv2d_86/bias/v/Read/ReadVariableOp+Adam/dense_166/kernel/v/Read/ReadVariableOp)Adam/dense_166/bias/v/Read/ReadVariableOp+Adam/dense_167/kernel/v/Read/ReadVariableOp)Adam/dense_167/bias/v/Read/ReadVariableOp+Adam/dense_168/kernel/v/Read/ReadVariableOp)Adam/dense_168/bias/v/Read/ReadVariableOp+Adam/dense_169/kernel/v/Read/ReadVariableOp)Adam/dense_169/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_862595
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_86/kernelconv2d_86/biasdense_166/kerneldense_166/biasdense_167/kerneldense_167/biasdense_168/kerneldense_168/biasdense_169/kerneldense_169/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_86/kernel/mAdam/conv2d_86/bias/mAdam/dense_166/kernel/mAdam/dense_166/bias/mAdam/dense_167/kernel/mAdam/dense_167/bias/mAdam/dense_168/kernel/mAdam/dense_168/bias/mAdam/dense_169/kernel/mAdam/dense_169/bias/mAdam/conv2d_86/kernel/vAdam/conv2d_86/bias/vAdam/dense_166/kernel/vAdam/dense_166/bias/vAdam/dense_167/kernel/vAdam/dense_167/bias/vAdam/dense_168/kernel/vAdam/dense_168/bias/vAdam/dense_169/kernel/vAdam/dense_169/bias/v*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_862722??
?#
?
I__inference_sequential_57_layer_call_and_return_conditional_losses_862070

inputs+
conv2d_86_862042:?
conv2d_86_862044:	?$
dense_166_862049:
?b?
dense_166_862051:	?$
dense_167_862054:
??
dense_167_862056:	?$
dense_168_862059:
??
dense_168_862061:	?#
dense_169_862064:	?!
dense_169_862066:!
identity??!conv2d_86/StatefulPartitionedCall?!dense_166/StatefulPartitionedCall?!dense_167/StatefulPartitionedCall?!dense_168/StatefulPartitionedCall?!dense_169/StatefulPartitionedCall?
!conv2d_86/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_86_862042conv2d_86_862044*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_86_layer_call_and_return_conditional_losses_8618502#
!conv2d_86/StatefulPartitionedCall?
 max_pooling2d_86/PartitionedCallPartitionedCall*conv2d_86/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_86_layer_call_and_return_conditional_losses_8618262"
 max_pooling2d_86/PartitionedCall?
flatten_57/PartitionedCallPartitionedCall)max_pooling2d_86/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_57_layer_call_and_return_conditional_losses_8618632
flatten_57/PartitionedCall?
!dense_166/StatefulPartitionedCallStatefulPartitionedCall#flatten_57/PartitionedCall:output:0dense_166_862049dense_166_862051*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_166_layer_call_and_return_conditional_losses_8618762#
!dense_166/StatefulPartitionedCall?
!dense_167/StatefulPartitionedCallStatefulPartitionedCall*dense_166/StatefulPartitionedCall:output:0dense_167_862054dense_167_862056*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_167_layer_call_and_return_conditional_losses_8618932#
!dense_167/StatefulPartitionedCall?
!dense_168/StatefulPartitionedCallStatefulPartitionedCall*dense_167/StatefulPartitionedCall:output:0dense_168_862059dense_168_862061*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_168_layer_call_and_return_conditional_losses_8619102#
!dense_168/StatefulPartitionedCall?
!dense_169/StatefulPartitionedCallStatefulPartitionedCall*dense_168/StatefulPartitionedCall:output:0dense_169_862064dense_169_862066*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_169_layer_call_and_return_conditional_losses_8619262#
!dense_169/StatefulPartitionedCall?
IdentityIdentity*dense_169/StatefulPartitionedCall:output:0"^conv2d_86/StatefulPartitionedCall"^dense_166/StatefulPartitionedCall"^dense_167/StatefulPartitionedCall"^dense_168/StatefulPartitionedCall"^dense_169/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 2F
!conv2d_86/StatefulPartitionedCall!conv2d_86/StatefulPartitionedCall2F
!dense_166/StatefulPartitionedCall!dense_166/StatefulPartitionedCall2F
!dense_167/StatefulPartitionedCall!dense_167/StatefulPartitionedCall2F
!dense_168/StatefulPartitionedCall!dense_168/StatefulPartitionedCall2F
!dense_169/StatefulPartitionedCall!dense_169/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_86_layer_call_and_return_conditional_losses_861850

inputs9
conv2d_readvariableop_resource:?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_57_layer_call_fn_861956
conv2d_86_input"
unknown:?
	unknown_0:	?
	unknown_1:
?b?
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?!
	unknown_8:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_86_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_57_layer_call_and_return_conditional_losses_8619332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_86_input
?
b
F__inference_flatten_57_layer_call_and_return_conditional_losses_862371

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????b2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_dense_168_layer_call_and_return_conditional_losses_861910

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_dense_169_layer_call_fn_862455

inputs
unknown:	?!
	unknown_0:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_169_layer_call_and_return_conditional_losses_8619262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?#
?
I__inference_sequential_57_layer_call_and_return_conditional_losses_862180
conv2d_86_input+
conv2d_86_862152:?
conv2d_86_862154:	?$
dense_166_862159:
?b?
dense_166_862161:	?$
dense_167_862164:
??
dense_167_862166:	?$
dense_168_862169:
??
dense_168_862171:	?#
dense_169_862174:	?!
dense_169_862176:!
identity??!conv2d_86/StatefulPartitionedCall?!dense_166/StatefulPartitionedCall?!dense_167/StatefulPartitionedCall?!dense_168/StatefulPartitionedCall?!dense_169/StatefulPartitionedCall?
!conv2d_86/StatefulPartitionedCallStatefulPartitionedCallconv2d_86_inputconv2d_86_862152conv2d_86_862154*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_86_layer_call_and_return_conditional_losses_8618502#
!conv2d_86/StatefulPartitionedCall?
 max_pooling2d_86/PartitionedCallPartitionedCall*conv2d_86/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_86_layer_call_and_return_conditional_losses_8618262"
 max_pooling2d_86/PartitionedCall?
flatten_57/PartitionedCallPartitionedCall)max_pooling2d_86/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_57_layer_call_and_return_conditional_losses_8618632
flatten_57/PartitionedCall?
!dense_166/StatefulPartitionedCallStatefulPartitionedCall#flatten_57/PartitionedCall:output:0dense_166_862159dense_166_862161*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_166_layer_call_and_return_conditional_losses_8618762#
!dense_166/StatefulPartitionedCall?
!dense_167/StatefulPartitionedCallStatefulPartitionedCall*dense_166/StatefulPartitionedCall:output:0dense_167_862164dense_167_862166*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_167_layer_call_and_return_conditional_losses_8618932#
!dense_167/StatefulPartitionedCall?
!dense_168/StatefulPartitionedCallStatefulPartitionedCall*dense_167/StatefulPartitionedCall:output:0dense_168_862169dense_168_862171*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_168_layer_call_and_return_conditional_losses_8619102#
!dense_168/StatefulPartitionedCall?
!dense_169/StatefulPartitionedCallStatefulPartitionedCall*dense_168/StatefulPartitionedCall:output:0dense_169_862174dense_169_862176*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_169_layer_call_and_return_conditional_losses_8619262#
!dense_169/StatefulPartitionedCall?
IdentityIdentity*dense_169/StatefulPartitionedCall:output:0"^conv2d_86/StatefulPartitionedCall"^dense_166/StatefulPartitionedCall"^dense_167/StatefulPartitionedCall"^dense_168/StatefulPartitionedCall"^dense_169/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 2F
!conv2d_86/StatefulPartitionedCall!conv2d_86/StatefulPartitionedCall2F
!dense_166/StatefulPartitionedCall!dense_166/StatefulPartitionedCall2F
!dense_167/StatefulPartitionedCall!dense_167/StatefulPartitionedCall2F
!dense_168/StatefulPartitionedCall!dense_168/StatefulPartitionedCall2F
!dense_169/StatefulPartitionedCall!dense_169/StatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_86_input
?S
?
__inference__traced_save_862595
file_prefix/
+savev2_conv2d_86_kernel_read_readvariableop-
)savev2_conv2d_86_bias_read_readvariableop/
+savev2_dense_166_kernel_read_readvariableop-
)savev2_dense_166_bias_read_readvariableop/
+savev2_dense_167_kernel_read_readvariableop-
)savev2_dense_167_bias_read_readvariableop/
+savev2_dense_168_kernel_read_readvariableop-
)savev2_dense_168_bias_read_readvariableop/
+savev2_dense_169_kernel_read_readvariableop-
)savev2_dense_169_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_86_kernel_m_read_readvariableop4
0savev2_adam_conv2d_86_bias_m_read_readvariableop6
2savev2_adam_dense_166_kernel_m_read_readvariableop4
0savev2_adam_dense_166_bias_m_read_readvariableop6
2savev2_adam_dense_167_kernel_m_read_readvariableop4
0savev2_adam_dense_167_bias_m_read_readvariableop6
2savev2_adam_dense_168_kernel_m_read_readvariableop4
0savev2_adam_dense_168_bias_m_read_readvariableop6
2savev2_adam_dense_169_kernel_m_read_readvariableop4
0savev2_adam_dense_169_bias_m_read_readvariableop6
2savev2_adam_conv2d_86_kernel_v_read_readvariableop4
0savev2_adam_conv2d_86_bias_v_read_readvariableop6
2savev2_adam_dense_166_kernel_v_read_readvariableop4
0savev2_adam_dense_166_bias_v_read_readvariableop6
2savev2_adam_dense_167_kernel_v_read_readvariableop4
0savev2_adam_dense_167_bias_v_read_readvariableop6
2savev2_adam_dense_168_kernel_v_read_readvariableop4
0savev2_adam_dense_168_bias_v_read_readvariableop6
2savev2_adam_dense_169_kernel_v_read_readvariableop4
0savev2_adam_dense_169_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*?
value?B?(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_86_kernel_read_readvariableop)savev2_conv2d_86_bias_read_readvariableop+savev2_dense_166_kernel_read_readvariableop)savev2_dense_166_bias_read_readvariableop+savev2_dense_167_kernel_read_readvariableop)savev2_dense_167_bias_read_readvariableop+savev2_dense_168_kernel_read_readvariableop)savev2_dense_168_bias_read_readvariableop+savev2_dense_169_kernel_read_readvariableop)savev2_dense_169_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_86_kernel_m_read_readvariableop0savev2_adam_conv2d_86_bias_m_read_readvariableop2savev2_adam_dense_166_kernel_m_read_readvariableop0savev2_adam_dense_166_bias_m_read_readvariableop2savev2_adam_dense_167_kernel_m_read_readvariableop0savev2_adam_dense_167_bias_m_read_readvariableop2savev2_adam_dense_168_kernel_m_read_readvariableop0savev2_adam_dense_168_bias_m_read_readvariableop2savev2_adam_dense_169_kernel_m_read_readvariableop0savev2_adam_dense_169_bias_m_read_readvariableop2savev2_adam_conv2d_86_kernel_v_read_readvariableop0savev2_adam_conv2d_86_bias_v_read_readvariableop2savev2_adam_dense_166_kernel_v_read_readvariableop0savev2_adam_dense_166_bias_v_read_readvariableop2savev2_adam_dense_167_kernel_v_read_readvariableop0savev2_adam_dense_167_bias_v_read_readvariableop2savev2_adam_dense_168_kernel_v_read_readvariableop0savev2_adam_dense_168_bias_v_read_readvariableop2savev2_adam_dense_169_kernel_v_read_readvariableop0savev2_adam_dense_169_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :?:?:
?b?:?:
??:?:
??:?:	?!:!: : : : : : : : : :?:?:
?b?:?:
??:?:
??:?:	?!:!:?:?:
?b?:?:
??:?:
??:?:	?!:!: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_output_shapes
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
?b?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%	!

_output_shapes
:	?!: 


_output_shapes
:!:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
?b?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?!: 

_output_shapes
:!:-)
'
_output_shapes
:?:!

_output_shapes	
:?:& "
 
_output_shapes
:
?b?:!!

_output_shapes	
:?:&""
 
_output_shapes
:
??:!#

_output_shapes	
:?:&$"
 
_output_shapes
:
??:!%

_output_shapes	
:?:%&!

_output_shapes
:	?!: '

_output_shapes
:!:(

_output_shapes
: 
?
?
*__inference_dense_167_layer_call_fn_862416

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_167_layer_call_and_return_conditional_losses_8618932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?6
?
I__inference_sequential_57_layer_call_and_return_conditional_losses_862295

inputsC
(conv2d_86_conv2d_readvariableop_resource:?8
)conv2d_86_biasadd_readvariableop_resource:	?<
(dense_166_matmul_readvariableop_resource:
?b?8
)dense_166_biasadd_readvariableop_resource:	?<
(dense_167_matmul_readvariableop_resource:
??8
)dense_167_biasadd_readvariableop_resource:	?<
(dense_168_matmul_readvariableop_resource:
??8
)dense_168_biasadd_readvariableop_resource:	?;
(dense_169_matmul_readvariableop_resource:	?!7
)dense_169_biasadd_readvariableop_resource:!
identity?? conv2d_86/BiasAdd/ReadVariableOp?conv2d_86/Conv2D/ReadVariableOp? dense_166/BiasAdd/ReadVariableOp?dense_166/MatMul/ReadVariableOp? dense_167/BiasAdd/ReadVariableOp?dense_167/MatMul/ReadVariableOp? dense_168/BiasAdd/ReadVariableOp?dense_168/MatMul/ReadVariableOp? dense_169/BiasAdd/ReadVariableOp?dense_169/MatMul/ReadVariableOp?
conv2d_86/Conv2D/ReadVariableOpReadVariableOp(conv2d_86_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02!
conv2d_86/Conv2D/ReadVariableOp?
conv2d_86/Conv2DConv2Dinputs'conv2d_86/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_86/Conv2D?
 conv2d_86/BiasAdd/ReadVariableOpReadVariableOp)conv2d_86_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_86/BiasAdd/ReadVariableOp?
conv2d_86/BiasAddBiasAddconv2d_86/Conv2D:output:0(conv2d_86/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_86/BiasAdd
conv2d_86/ReluReluconv2d_86/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_86/Relu?
max_pooling2d_86/MaxPoolMaxPoolconv2d_86/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_86/MaxPoolu
flatten_57/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2
flatten_57/Const?
flatten_57/ReshapeReshape!max_pooling2d_86/MaxPool:output:0flatten_57/Const:output:0*
T0*(
_output_shapes
:??????????b2
flatten_57/Reshape?
dense_166/MatMul/ReadVariableOpReadVariableOp(dense_166_matmul_readvariableop_resource* 
_output_shapes
:
?b?*
dtype02!
dense_166/MatMul/ReadVariableOp?
dense_166/MatMulMatMulflatten_57/Reshape:output:0'dense_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_166/MatMul?
 dense_166/BiasAdd/ReadVariableOpReadVariableOp)dense_166_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_166/BiasAdd/ReadVariableOp?
dense_166/BiasAddBiasAdddense_166/MatMul:product:0(dense_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_166/BiasAddw
dense_166/ReluReludense_166/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_166/Relu?
dense_167/MatMul/ReadVariableOpReadVariableOp(dense_167_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_167/MatMul/ReadVariableOp?
dense_167/MatMulMatMuldense_166/Relu:activations:0'dense_167/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_167/MatMul?
 dense_167/BiasAdd/ReadVariableOpReadVariableOp)dense_167_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_167/BiasAdd/ReadVariableOp?
dense_167/BiasAddBiasAdddense_167/MatMul:product:0(dense_167/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_167/BiasAddw
dense_167/ReluReludense_167/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_167/Relu?
dense_168/MatMul/ReadVariableOpReadVariableOp(dense_168_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_168/MatMul/ReadVariableOp?
dense_168/MatMulMatMuldense_167/Relu:activations:0'dense_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_168/MatMul?
 dense_168/BiasAdd/ReadVariableOpReadVariableOp)dense_168_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_168/BiasAdd/ReadVariableOp?
dense_168/BiasAddBiasAdddense_168/MatMul:product:0(dense_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_168/BiasAddw
dense_168/ReluReludense_168/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_168/Relu?
dense_169/MatMul/ReadVariableOpReadVariableOp(dense_169_matmul_readvariableop_resource*
_output_shapes
:	?!*
dtype02!
dense_169/MatMul/ReadVariableOp?
dense_169/MatMulMatMuldense_168/Relu:activations:0'dense_169/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2
dense_169/MatMul?
 dense_169/BiasAdd/ReadVariableOpReadVariableOp)dense_169_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype02"
 dense_169/BiasAdd/ReadVariableOp?
dense_169/BiasAddBiasAdddense_169/MatMul:product:0(dense_169/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2
dense_169/BiasAdd?
IdentityIdentitydense_169/BiasAdd:output:0!^conv2d_86/BiasAdd/ReadVariableOp ^conv2d_86/Conv2D/ReadVariableOp!^dense_166/BiasAdd/ReadVariableOp ^dense_166/MatMul/ReadVariableOp!^dense_167/BiasAdd/ReadVariableOp ^dense_167/MatMul/ReadVariableOp!^dense_168/BiasAdd/ReadVariableOp ^dense_168/MatMul/ReadVariableOp!^dense_169/BiasAdd/ReadVariableOp ^dense_169/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 2D
 conv2d_86/BiasAdd/ReadVariableOp conv2d_86/BiasAdd/ReadVariableOp2B
conv2d_86/Conv2D/ReadVariableOpconv2d_86/Conv2D/ReadVariableOp2D
 dense_166/BiasAdd/ReadVariableOp dense_166/BiasAdd/ReadVariableOp2B
dense_166/MatMul/ReadVariableOpdense_166/MatMul/ReadVariableOp2D
 dense_167/BiasAdd/ReadVariableOp dense_167/BiasAdd/ReadVariableOp2B
dense_167/MatMul/ReadVariableOpdense_167/MatMul/ReadVariableOp2D
 dense_168/BiasAdd/ReadVariableOp dense_168/BiasAdd/ReadVariableOp2B
dense_168/MatMul/ReadVariableOpdense_168/MatMul/ReadVariableOp2D
 dense_169/BiasAdd/ReadVariableOp dense_169/BiasAdd/ReadVariableOp2B
dense_169/MatMul/ReadVariableOpdense_169/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_169_layer_call_and_return_conditional_losses_861926

inputs1
matmul_readvariableop_resource:	?!-
biasadd_readvariableop_resource:!
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?!*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:!*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?#
?
I__inference_sequential_57_layer_call_and_return_conditional_losses_861933

inputs+
conv2d_86_861851:?
conv2d_86_861853:	?$
dense_166_861877:
?b?
dense_166_861879:	?$
dense_167_861894:
??
dense_167_861896:	?$
dense_168_861911:
??
dense_168_861913:	?#
dense_169_861927:	?!
dense_169_861929:!
identity??!conv2d_86/StatefulPartitionedCall?!dense_166/StatefulPartitionedCall?!dense_167/StatefulPartitionedCall?!dense_168/StatefulPartitionedCall?!dense_169/StatefulPartitionedCall?
!conv2d_86/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_86_861851conv2d_86_861853*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_86_layer_call_and_return_conditional_losses_8618502#
!conv2d_86/StatefulPartitionedCall?
 max_pooling2d_86/PartitionedCallPartitionedCall*conv2d_86/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_86_layer_call_and_return_conditional_losses_8618262"
 max_pooling2d_86/PartitionedCall?
flatten_57/PartitionedCallPartitionedCall)max_pooling2d_86/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_57_layer_call_and_return_conditional_losses_8618632
flatten_57/PartitionedCall?
!dense_166/StatefulPartitionedCallStatefulPartitionedCall#flatten_57/PartitionedCall:output:0dense_166_861877dense_166_861879*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_166_layer_call_and_return_conditional_losses_8618762#
!dense_166/StatefulPartitionedCall?
!dense_167/StatefulPartitionedCallStatefulPartitionedCall*dense_166/StatefulPartitionedCall:output:0dense_167_861894dense_167_861896*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_167_layer_call_and_return_conditional_losses_8618932#
!dense_167/StatefulPartitionedCall?
!dense_168/StatefulPartitionedCallStatefulPartitionedCall*dense_167/StatefulPartitionedCall:output:0dense_168_861911dense_168_861913*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_168_layer_call_and_return_conditional_losses_8619102#
!dense_168/StatefulPartitionedCall?
!dense_169/StatefulPartitionedCallStatefulPartitionedCall*dense_168/StatefulPartitionedCall:output:0dense_169_861927dense_169_861929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_169_layer_call_and_return_conditional_losses_8619262#
!dense_169/StatefulPartitionedCall?
IdentityIdentity*dense_169/StatefulPartitionedCall:output:0"^conv2d_86/StatefulPartitionedCall"^dense_166/StatefulPartitionedCall"^dense_167/StatefulPartitionedCall"^dense_168/StatefulPartitionedCall"^dense_169/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 2F
!conv2d_86/StatefulPartitionedCall!conv2d_86/StatefulPartitionedCall2F
!dense_166/StatefulPartitionedCall!dense_166/StatefulPartitionedCall2F
!dense_167/StatefulPartitionedCall!dense_167/StatefulPartitionedCall2F
!dense_168/StatefulPartitionedCall!dense_168/StatefulPartitionedCall2F
!dense_169/StatefulPartitionedCall!dense_169/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?E
?

!__inference__wrapped_model_861820
conv2d_86_inputQ
6sequential_57_conv2d_86_conv2d_readvariableop_resource:?F
7sequential_57_conv2d_86_biasadd_readvariableop_resource:	?J
6sequential_57_dense_166_matmul_readvariableop_resource:
?b?F
7sequential_57_dense_166_biasadd_readvariableop_resource:	?J
6sequential_57_dense_167_matmul_readvariableop_resource:
??F
7sequential_57_dense_167_biasadd_readvariableop_resource:	?J
6sequential_57_dense_168_matmul_readvariableop_resource:
??F
7sequential_57_dense_168_biasadd_readvariableop_resource:	?I
6sequential_57_dense_169_matmul_readvariableop_resource:	?!E
7sequential_57_dense_169_biasadd_readvariableop_resource:!
identity??.sequential_57/conv2d_86/BiasAdd/ReadVariableOp?-sequential_57/conv2d_86/Conv2D/ReadVariableOp?.sequential_57/dense_166/BiasAdd/ReadVariableOp?-sequential_57/dense_166/MatMul/ReadVariableOp?.sequential_57/dense_167/BiasAdd/ReadVariableOp?-sequential_57/dense_167/MatMul/ReadVariableOp?.sequential_57/dense_168/BiasAdd/ReadVariableOp?-sequential_57/dense_168/MatMul/ReadVariableOp?.sequential_57/dense_169/BiasAdd/ReadVariableOp?-sequential_57/dense_169/MatMul/ReadVariableOp?
-sequential_57/conv2d_86/Conv2D/ReadVariableOpReadVariableOp6sequential_57_conv2d_86_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02/
-sequential_57/conv2d_86/Conv2D/ReadVariableOp?
sequential_57/conv2d_86/Conv2DConv2Dconv2d_86_input5sequential_57/conv2d_86/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2 
sequential_57/conv2d_86/Conv2D?
.sequential_57/conv2d_86/BiasAdd/ReadVariableOpReadVariableOp7sequential_57_conv2d_86_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_57/conv2d_86/BiasAdd/ReadVariableOp?
sequential_57/conv2d_86/BiasAddBiasAdd'sequential_57/conv2d_86/Conv2D:output:06sequential_57/conv2d_86/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2!
sequential_57/conv2d_86/BiasAdd?
sequential_57/conv2d_86/ReluRelu(sequential_57/conv2d_86/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_57/conv2d_86/Relu?
&sequential_57/max_pooling2d_86/MaxPoolMaxPool*sequential_57/conv2d_86/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2(
&sequential_57/max_pooling2d_86/MaxPool?
sequential_57/flatten_57/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2 
sequential_57/flatten_57/Const?
 sequential_57/flatten_57/ReshapeReshape/sequential_57/max_pooling2d_86/MaxPool:output:0'sequential_57/flatten_57/Const:output:0*
T0*(
_output_shapes
:??????????b2"
 sequential_57/flatten_57/Reshape?
-sequential_57/dense_166/MatMul/ReadVariableOpReadVariableOp6sequential_57_dense_166_matmul_readvariableop_resource* 
_output_shapes
:
?b?*
dtype02/
-sequential_57/dense_166/MatMul/ReadVariableOp?
sequential_57/dense_166/MatMulMatMul)sequential_57/flatten_57/Reshape:output:05sequential_57/dense_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_57/dense_166/MatMul?
.sequential_57/dense_166/BiasAdd/ReadVariableOpReadVariableOp7sequential_57_dense_166_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_57/dense_166/BiasAdd/ReadVariableOp?
sequential_57/dense_166/BiasAddBiasAdd(sequential_57/dense_166/MatMul:product:06sequential_57/dense_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_57/dense_166/BiasAdd?
sequential_57/dense_166/ReluRelu(sequential_57/dense_166/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_57/dense_166/Relu?
-sequential_57/dense_167/MatMul/ReadVariableOpReadVariableOp6sequential_57_dense_167_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_57/dense_167/MatMul/ReadVariableOp?
sequential_57/dense_167/MatMulMatMul*sequential_57/dense_166/Relu:activations:05sequential_57/dense_167/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_57/dense_167/MatMul?
.sequential_57/dense_167/BiasAdd/ReadVariableOpReadVariableOp7sequential_57_dense_167_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_57/dense_167/BiasAdd/ReadVariableOp?
sequential_57/dense_167/BiasAddBiasAdd(sequential_57/dense_167/MatMul:product:06sequential_57/dense_167/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_57/dense_167/BiasAdd?
sequential_57/dense_167/ReluRelu(sequential_57/dense_167/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_57/dense_167/Relu?
-sequential_57/dense_168/MatMul/ReadVariableOpReadVariableOp6sequential_57_dense_168_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_57/dense_168/MatMul/ReadVariableOp?
sequential_57/dense_168/MatMulMatMul*sequential_57/dense_167/Relu:activations:05sequential_57/dense_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_57/dense_168/MatMul?
.sequential_57/dense_168/BiasAdd/ReadVariableOpReadVariableOp7sequential_57_dense_168_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_57/dense_168/BiasAdd/ReadVariableOp?
sequential_57/dense_168/BiasAddBiasAdd(sequential_57/dense_168/MatMul:product:06sequential_57/dense_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_57/dense_168/BiasAdd?
sequential_57/dense_168/ReluRelu(sequential_57/dense_168/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_57/dense_168/Relu?
-sequential_57/dense_169/MatMul/ReadVariableOpReadVariableOp6sequential_57_dense_169_matmul_readvariableop_resource*
_output_shapes
:	?!*
dtype02/
-sequential_57/dense_169/MatMul/ReadVariableOp?
sequential_57/dense_169/MatMulMatMul*sequential_57/dense_168/Relu:activations:05sequential_57/dense_169/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2 
sequential_57/dense_169/MatMul?
.sequential_57/dense_169/BiasAdd/ReadVariableOpReadVariableOp7sequential_57_dense_169_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype020
.sequential_57/dense_169/BiasAdd/ReadVariableOp?
sequential_57/dense_169/BiasAddBiasAdd(sequential_57/dense_169/MatMul:product:06sequential_57/dense_169/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2!
sequential_57/dense_169/BiasAdd?
IdentityIdentity(sequential_57/dense_169/BiasAdd:output:0/^sequential_57/conv2d_86/BiasAdd/ReadVariableOp.^sequential_57/conv2d_86/Conv2D/ReadVariableOp/^sequential_57/dense_166/BiasAdd/ReadVariableOp.^sequential_57/dense_166/MatMul/ReadVariableOp/^sequential_57/dense_167/BiasAdd/ReadVariableOp.^sequential_57/dense_167/MatMul/ReadVariableOp/^sequential_57/dense_168/BiasAdd/ReadVariableOp.^sequential_57/dense_168/MatMul/ReadVariableOp/^sequential_57/dense_169/BiasAdd/ReadVariableOp.^sequential_57/dense_169/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 2`
.sequential_57/conv2d_86/BiasAdd/ReadVariableOp.sequential_57/conv2d_86/BiasAdd/ReadVariableOp2^
-sequential_57/conv2d_86/Conv2D/ReadVariableOp-sequential_57/conv2d_86/Conv2D/ReadVariableOp2`
.sequential_57/dense_166/BiasAdd/ReadVariableOp.sequential_57/dense_166/BiasAdd/ReadVariableOp2^
-sequential_57/dense_166/MatMul/ReadVariableOp-sequential_57/dense_166/MatMul/ReadVariableOp2`
.sequential_57/dense_167/BiasAdd/ReadVariableOp.sequential_57/dense_167/BiasAdd/ReadVariableOp2^
-sequential_57/dense_167/MatMul/ReadVariableOp-sequential_57/dense_167/MatMul/ReadVariableOp2`
.sequential_57/dense_168/BiasAdd/ReadVariableOp.sequential_57/dense_168/BiasAdd/ReadVariableOp2^
-sequential_57/dense_168/MatMul/ReadVariableOp-sequential_57/dense_168/MatMul/ReadVariableOp2`
.sequential_57/dense_169/BiasAdd/ReadVariableOp.sequential_57/dense_169/BiasAdd/ReadVariableOp2^
-sequential_57/dense_169/MatMul/ReadVariableOp-sequential_57/dense_169/MatMul/ReadVariableOp:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_86_input
?

?
E__inference_dense_167_layer_call_and_return_conditional_losses_862407

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_57_layer_call_fn_862345

inputs"
unknown:?
	unknown_0:	?
	unknown_1:
?b?
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?!
	unknown_8:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_57_layer_call_and_return_conditional_losses_8620702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
$__inference_signature_wrapper_862213
conv2d_86_input"
unknown:?
	unknown_0:	?
	unknown_1:
?b?
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?!
	unknown_8:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_86_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_8618202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_86_input
?

?
.__inference_sequential_57_layer_call_fn_862118
conv2d_86_input"
unknown:?
	unknown_0:	?
	unknown_1:
?b?
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?!
	unknown_8:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_86_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_57_layer_call_and_return_conditional_losses_8620702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_86_input
??
?
"__inference__traced_restore_862722
file_prefix<
!assignvariableop_conv2d_86_kernel:?0
!assignvariableop_1_conv2d_86_bias:	?7
#assignvariableop_2_dense_166_kernel:
?b?0
!assignvariableop_3_dense_166_bias:	?7
#assignvariableop_4_dense_167_kernel:
??0
!assignvariableop_5_dense_167_bias:	?7
#assignvariableop_6_dense_168_kernel:
??0
!assignvariableop_7_dense_168_bias:	?6
#assignvariableop_8_dense_169_kernel:	?!/
!assignvariableop_9_dense_169_bias:!'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: F
+assignvariableop_19_adam_conv2d_86_kernel_m:?8
)assignvariableop_20_adam_conv2d_86_bias_m:	??
+assignvariableop_21_adam_dense_166_kernel_m:
?b?8
)assignvariableop_22_adam_dense_166_bias_m:	??
+assignvariableop_23_adam_dense_167_kernel_m:
??8
)assignvariableop_24_adam_dense_167_bias_m:	??
+assignvariableop_25_adam_dense_168_kernel_m:
??8
)assignvariableop_26_adam_dense_168_bias_m:	?>
+assignvariableop_27_adam_dense_169_kernel_m:	?!7
)assignvariableop_28_adam_dense_169_bias_m:!F
+assignvariableop_29_adam_conv2d_86_kernel_v:?8
)assignvariableop_30_adam_conv2d_86_bias_v:	??
+assignvariableop_31_adam_dense_166_kernel_v:
?b?8
)assignvariableop_32_adam_dense_166_bias_v:	??
+assignvariableop_33_adam_dense_167_kernel_v:
??8
)assignvariableop_34_adam_dense_167_bias_v:	??
+assignvariableop_35_adam_dense_168_kernel_v:
??8
)assignvariableop_36_adam_dense_168_bias_v:	?>
+assignvariableop_37_adam_dense_169_kernel_v:	?!7
)assignvariableop_38_adam_dense_169_bias_v:!
identity_40??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*?
value?B?(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_86_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_86_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_166_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_166_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_167_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_167_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_168_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_168_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_169_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_169_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_conv2d_86_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_conv2d_86_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_166_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_166_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_167_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_167_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_dense_168_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_168_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_169_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_169_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_86_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_86_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_dense_166_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_166_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_dense_167_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_dense_167_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_dense_168_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_dense_168_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_dense_169_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_169_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_389
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_39?
Identity_40IdentityIdentity_39:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_40"#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
h
L__inference_max_pooling2d_86_layer_call_and_return_conditional_losses_861826

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
E__inference_dense_168_layer_call_and_return_conditional_losses_862427

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_57_layer_call_fn_862320

inputs"
unknown:?
	unknown_0:	?
	unknown_1:
?b?
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?!
	unknown_8:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_57_layer_call_and_return_conditional_losses_8619332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_166_layer_call_fn_862396

inputs
unknown:
?b?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_166_layer_call_and_return_conditional_losses_8618762
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????b: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
?
*__inference_dense_168_layer_call_fn_862436

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_168_layer_call_and_return_conditional_losses_8619102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_86_layer_call_and_return_conditional_losses_862356

inputs9
conv2d_readvariableop_resource:?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_57_layer_call_fn_862376

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_57_layer_call_and_return_conditional_losses_8618632
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_dense_166_layer_call_and_return_conditional_losses_862387

inputs2
matmul_readvariableop_resource:
?b?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?b?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????b: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?

?
E__inference_dense_167_layer_call_and_return_conditional_losses_861893

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_169_layer_call_and_return_conditional_losses_862446

inputs1
matmul_readvariableop_resource:	?!-
biasadd_readvariableop_resource:!
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?!*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:!*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?#
?
I__inference_sequential_57_layer_call_and_return_conditional_losses_862149
conv2d_86_input+
conv2d_86_862121:?
conv2d_86_862123:	?$
dense_166_862128:
?b?
dense_166_862130:	?$
dense_167_862133:
??
dense_167_862135:	?$
dense_168_862138:
??
dense_168_862140:	?#
dense_169_862143:	?!
dense_169_862145:!
identity??!conv2d_86/StatefulPartitionedCall?!dense_166/StatefulPartitionedCall?!dense_167/StatefulPartitionedCall?!dense_168/StatefulPartitionedCall?!dense_169/StatefulPartitionedCall?
!conv2d_86/StatefulPartitionedCallStatefulPartitionedCallconv2d_86_inputconv2d_86_862121conv2d_86_862123*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_86_layer_call_and_return_conditional_losses_8618502#
!conv2d_86/StatefulPartitionedCall?
 max_pooling2d_86/PartitionedCallPartitionedCall*conv2d_86/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_86_layer_call_and_return_conditional_losses_8618262"
 max_pooling2d_86/PartitionedCall?
flatten_57/PartitionedCallPartitionedCall)max_pooling2d_86/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_57_layer_call_and_return_conditional_losses_8618632
flatten_57/PartitionedCall?
!dense_166/StatefulPartitionedCallStatefulPartitionedCall#flatten_57/PartitionedCall:output:0dense_166_862128dense_166_862130*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_166_layer_call_and_return_conditional_losses_8618762#
!dense_166/StatefulPartitionedCall?
!dense_167/StatefulPartitionedCallStatefulPartitionedCall*dense_166/StatefulPartitionedCall:output:0dense_167_862133dense_167_862135*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_167_layer_call_and_return_conditional_losses_8618932#
!dense_167/StatefulPartitionedCall?
!dense_168/StatefulPartitionedCallStatefulPartitionedCall*dense_167/StatefulPartitionedCall:output:0dense_168_862138dense_168_862140*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_168_layer_call_and_return_conditional_losses_8619102#
!dense_168/StatefulPartitionedCall?
!dense_169/StatefulPartitionedCallStatefulPartitionedCall*dense_168/StatefulPartitionedCall:output:0dense_169_862143dense_169_862145*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_169_layer_call_and_return_conditional_losses_8619262#
!dense_169/StatefulPartitionedCall?
IdentityIdentity*dense_169/StatefulPartitionedCall:output:0"^conv2d_86/StatefulPartitionedCall"^dense_166/StatefulPartitionedCall"^dense_167/StatefulPartitionedCall"^dense_168/StatefulPartitionedCall"^dense_169/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 2F
!conv2d_86/StatefulPartitionedCall!conv2d_86/StatefulPartitionedCall2F
!dense_166/StatefulPartitionedCall!dense_166/StatefulPartitionedCall2F
!dense_167/StatefulPartitionedCall!dense_167/StatefulPartitionedCall2F
!dense_168/StatefulPartitionedCall!dense_168/StatefulPartitionedCall2F
!dense_169/StatefulPartitionedCall!dense_169/StatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_86_input
?

?
E__inference_dense_166_layer_call_and_return_conditional_losses_861876

inputs2
matmul_readvariableop_resource:
?b?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?b?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????b: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
?
*__inference_conv2d_86_layer_call_fn_862365

inputs"
unknown:?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_86_layer_call_and_return_conditional_losses_8618502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?6
?
I__inference_sequential_57_layer_call_and_return_conditional_losses_862254

inputsC
(conv2d_86_conv2d_readvariableop_resource:?8
)conv2d_86_biasadd_readvariableop_resource:	?<
(dense_166_matmul_readvariableop_resource:
?b?8
)dense_166_biasadd_readvariableop_resource:	?<
(dense_167_matmul_readvariableop_resource:
??8
)dense_167_biasadd_readvariableop_resource:	?<
(dense_168_matmul_readvariableop_resource:
??8
)dense_168_biasadd_readvariableop_resource:	?;
(dense_169_matmul_readvariableop_resource:	?!7
)dense_169_biasadd_readvariableop_resource:!
identity?? conv2d_86/BiasAdd/ReadVariableOp?conv2d_86/Conv2D/ReadVariableOp? dense_166/BiasAdd/ReadVariableOp?dense_166/MatMul/ReadVariableOp? dense_167/BiasAdd/ReadVariableOp?dense_167/MatMul/ReadVariableOp? dense_168/BiasAdd/ReadVariableOp?dense_168/MatMul/ReadVariableOp? dense_169/BiasAdd/ReadVariableOp?dense_169/MatMul/ReadVariableOp?
conv2d_86/Conv2D/ReadVariableOpReadVariableOp(conv2d_86_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02!
conv2d_86/Conv2D/ReadVariableOp?
conv2d_86/Conv2DConv2Dinputs'conv2d_86/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_86/Conv2D?
 conv2d_86/BiasAdd/ReadVariableOpReadVariableOp)conv2d_86_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_86/BiasAdd/ReadVariableOp?
conv2d_86/BiasAddBiasAddconv2d_86/Conv2D:output:0(conv2d_86/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_86/BiasAdd
conv2d_86/ReluReluconv2d_86/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_86/Relu?
max_pooling2d_86/MaxPoolMaxPoolconv2d_86/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_86/MaxPoolu
flatten_57/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2
flatten_57/Const?
flatten_57/ReshapeReshape!max_pooling2d_86/MaxPool:output:0flatten_57/Const:output:0*
T0*(
_output_shapes
:??????????b2
flatten_57/Reshape?
dense_166/MatMul/ReadVariableOpReadVariableOp(dense_166_matmul_readvariableop_resource* 
_output_shapes
:
?b?*
dtype02!
dense_166/MatMul/ReadVariableOp?
dense_166/MatMulMatMulflatten_57/Reshape:output:0'dense_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_166/MatMul?
 dense_166/BiasAdd/ReadVariableOpReadVariableOp)dense_166_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_166/BiasAdd/ReadVariableOp?
dense_166/BiasAddBiasAdddense_166/MatMul:product:0(dense_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_166/BiasAddw
dense_166/ReluReludense_166/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_166/Relu?
dense_167/MatMul/ReadVariableOpReadVariableOp(dense_167_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_167/MatMul/ReadVariableOp?
dense_167/MatMulMatMuldense_166/Relu:activations:0'dense_167/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_167/MatMul?
 dense_167/BiasAdd/ReadVariableOpReadVariableOp)dense_167_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_167/BiasAdd/ReadVariableOp?
dense_167/BiasAddBiasAdddense_167/MatMul:product:0(dense_167/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_167/BiasAddw
dense_167/ReluReludense_167/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_167/Relu?
dense_168/MatMul/ReadVariableOpReadVariableOp(dense_168_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_168/MatMul/ReadVariableOp?
dense_168/MatMulMatMuldense_167/Relu:activations:0'dense_168/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_168/MatMul?
 dense_168/BiasAdd/ReadVariableOpReadVariableOp)dense_168_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_168/BiasAdd/ReadVariableOp?
dense_168/BiasAddBiasAdddense_168/MatMul:product:0(dense_168/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_168/BiasAddw
dense_168/ReluReludense_168/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_168/Relu?
dense_169/MatMul/ReadVariableOpReadVariableOp(dense_169_matmul_readvariableop_resource*
_output_shapes
:	?!*
dtype02!
dense_169/MatMul/ReadVariableOp?
dense_169/MatMulMatMuldense_168/Relu:activations:0'dense_169/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2
dense_169/MatMul?
 dense_169/BiasAdd/ReadVariableOpReadVariableOp)dense_169_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype02"
 dense_169/BiasAdd/ReadVariableOp?
dense_169/BiasAddBiasAdddense_169/MatMul:product:0(dense_169/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2
dense_169/BiasAdd?
IdentityIdentitydense_169/BiasAdd:output:0!^conv2d_86/BiasAdd/ReadVariableOp ^conv2d_86/Conv2D/ReadVariableOp!^dense_166/BiasAdd/ReadVariableOp ^dense_166/MatMul/ReadVariableOp!^dense_167/BiasAdd/ReadVariableOp ^dense_167/MatMul/ReadVariableOp!^dense_168/BiasAdd/ReadVariableOp ^dense_168/MatMul/ReadVariableOp!^dense_169/BiasAdd/ReadVariableOp ^dense_169/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 2D
 conv2d_86/BiasAdd/ReadVariableOp conv2d_86/BiasAdd/ReadVariableOp2B
conv2d_86/Conv2D/ReadVariableOpconv2d_86/Conv2D/ReadVariableOp2D
 dense_166/BiasAdd/ReadVariableOp dense_166/BiasAdd/ReadVariableOp2B
dense_166/MatMul/ReadVariableOpdense_166/MatMul/ReadVariableOp2D
 dense_167/BiasAdd/ReadVariableOp dense_167/BiasAdd/ReadVariableOp2B
dense_167/MatMul/ReadVariableOpdense_167/MatMul/ReadVariableOp2D
 dense_168/BiasAdd/ReadVariableOp dense_168/BiasAdd/ReadVariableOp2B
dense_168/MatMul/ReadVariableOpdense_168/MatMul/ReadVariableOp2D
 dense_169/BiasAdd/ReadVariableOp dense_169/BiasAdd/ReadVariableOp2B
dense_169/MatMul/ReadVariableOpdense_169/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_86_layer_call_fn_861832

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_86_layer_call_and_return_conditional_losses_8618262
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_57_layer_call_and_return_conditional_losses_861863

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????b2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
S
conv2d_86_input@
!serving_default_conv2d_86_input:0?????????=
	dense_1690
StatefulPartitionedCall:0?????????!tensorflow/serving/predict:??
?B
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
	optimizer
	regularization_losses

	variables
trainable_variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"??
_tf_keras_sequential??{"name": "sequential_57", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_57", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_86_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_86", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_86", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_57", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_166", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_167", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_168", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_169", "trainable": true, "dtype": "float32", "units": 33, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 16, 16, 3]}, "float32", "conv2d_86_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_57", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_86_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_86", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_86", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4}, {"class_name": "Flatten", "config": {"name": "flatten_57", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_166", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_167", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}, {"class_name": "Dense", "config": {"name": "dense_168", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14}, {"class_name": "Dense", "config": {"name": "dense_169", "trainable": true, "dtype": "float32", "units": 33, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}, "shared_object_id": 20}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 21}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?

_tf_keras_layer?
{"name": "conv2d_86", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_86", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 3]}}
?
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "max_pooling2d_86", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_86", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 22}}
?
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "flatten_57", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_57", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 23}}
?

kernel
bias
regularization_losses
	variables
 trainable_variables
!	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_166", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_166", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 12544}}, "shared_object_id": 24}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12544]}}
?

"kernel
#bias
$regularization_losses
%	variables
&trainable_variables
'	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_167", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_167", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

(kernel
)bias
*regularization_losses
+	variables
,trainable_variables
-	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_168", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_168", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 26}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

.kernel
/bias
0regularization_losses
1	variables
2trainable_variables
3	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_169", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_169", "trainable": true, "dtype": "float32", "units": 33, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 27}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
4iter

5beta_1

6beta_2
	7decay
8learning_ratemlmmmnmo"mp#mq(mr)ms.mt/muvvvwvxvy"vz#v{(v|)v}.v~/v"
	optimizer
 "
trackable_list_wrapper
f
0
1
2
3
"4
#5
(6
)7
.8
/9"
trackable_list_wrapper
f
0
1
2
3
"4
#5
(6
)7
.8
/9"
trackable_list_wrapper
?
9layer_metrics
	regularization_losses

	variables

:layers
;metrics
<non_trainable_variables
trainable_variables
=layer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
+:)?2conv2d_86/kernel
:?2conv2d_86/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
>layer_metrics
regularization_losses
	variables

?layers
@metrics
Anon_trainable_variables
trainable_variables
Blayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Clayer_metrics
regularization_losses
	variables

Dlayers
Emetrics
Fnon_trainable_variables
trainable_variables
Glayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Hlayer_metrics
regularization_losses
	variables

Ilayers
Jmetrics
Knon_trainable_variables
trainable_variables
Llayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
?b?2dense_166/kernel
:?2dense_166/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Mlayer_metrics
regularization_losses
	variables

Nlayers
Ometrics
Pnon_trainable_variables
 trainable_variables
Qlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_167/kernel
:?2dense_167/bias
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
?
Rlayer_metrics
$regularization_losses
%	variables

Slayers
Tmetrics
Unon_trainable_variables
&trainable_variables
Vlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_168/kernel
:?2dense_168/bias
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
?
Wlayer_metrics
*regularization_losses
+	variables

Xlayers
Ymetrics
Znon_trainable_variables
,trainable_variables
[layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	?!2dense_169/kernel
:!2dense_169/bias
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
?
\layer_metrics
0regularization_losses
1	variables

]layers
^metrics
_non_trainable_variables
2trainable_variables
`layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	ctotal
	dcount
e	variables
f	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 28}
?
	gtotal
	hcount
i
_fn_kwargs
j	variables
k	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 21}
:  (2total
:  (2count
.
c0
d1"
trackable_list_wrapper
-
e	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
g0
h1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
0:.?2Adam/conv2d_86/kernel/m
": ?2Adam/conv2d_86/bias/m
):'
?b?2Adam/dense_166/kernel/m
": ?2Adam/dense_166/bias/m
):'
??2Adam/dense_167/kernel/m
": ?2Adam/dense_167/bias/m
):'
??2Adam/dense_168/kernel/m
": ?2Adam/dense_168/bias/m
(:&	?!2Adam/dense_169/kernel/m
!:!2Adam/dense_169/bias/m
0:.?2Adam/conv2d_86/kernel/v
": ?2Adam/conv2d_86/bias/v
):'
?b?2Adam/dense_166/kernel/v
": ?2Adam/dense_166/bias/v
):'
??2Adam/dense_167/kernel/v
": ?2Adam/dense_167/bias/v
):'
??2Adam/dense_168/kernel/v
": ?2Adam/dense_168/bias/v
(:&	?!2Adam/dense_169/kernel/v
!:!2Adam/dense_169/bias/v
?2?
I__inference_sequential_57_layer_call_and_return_conditional_losses_862254
I__inference_sequential_57_layer_call_and_return_conditional_losses_862295
I__inference_sequential_57_layer_call_and_return_conditional_losses_862149
I__inference_sequential_57_layer_call_and_return_conditional_losses_862180?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_861820?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *6?3
1?.
conv2d_86_input?????????
?2?
.__inference_sequential_57_layer_call_fn_861956
.__inference_sequential_57_layer_call_fn_862320
.__inference_sequential_57_layer_call_fn_862345
.__inference_sequential_57_layer_call_fn_862118?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_conv2d_86_layer_call_and_return_conditional_losses_862356?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_conv2d_86_layer_call_fn_862365?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_max_pooling2d_86_layer_call_and_return_conditional_losses_861826?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
1__inference_max_pooling2d_86_layer_call_fn_861832?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
F__inference_flatten_57_layer_call_and_return_conditional_losses_862371?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_flatten_57_layer_call_fn_862376?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_166_layer_call_and_return_conditional_losses_862387?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_166_layer_call_fn_862396?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_167_layer_call_and_return_conditional_losses_862407?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_167_layer_call_fn_862416?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_168_layer_call_and_return_conditional_losses_862427?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_168_layer_call_fn_862436?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_169_layer_call_and_return_conditional_losses_862446?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_169_layer_call_fn_862455?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_862213conv2d_86_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_861820?
"#()./@?=
6?3
1?.
conv2d_86_input?????????
? "5?2
0
	dense_169#? 
	dense_169?????????!?
E__inference_conv2d_86_layer_call_and_return_conditional_losses_862356m7?4
-?*
(?%
inputs?????????
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_86_layer_call_fn_862365`7?4
-?*
(?%
inputs?????????
? "!????????????
E__inference_dense_166_layer_call_and_return_conditional_losses_862387^0?-
&?#
!?
inputs??????????b
? "&?#
?
0??????????
? 
*__inference_dense_166_layer_call_fn_862396Q0?-
&?#
!?
inputs??????????b
? "????????????
E__inference_dense_167_layer_call_and_return_conditional_losses_862407^"#0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_167_layer_call_fn_862416Q"#0?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_168_layer_call_and_return_conditional_losses_862427^()0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_168_layer_call_fn_862436Q()0?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_169_layer_call_and_return_conditional_losses_862446]./0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????!
? ~
*__inference_dense_169_layer_call_fn_862455P./0?-
&?#
!?
inputs??????????
? "??????????!?
F__inference_flatten_57_layer_call_and_return_conditional_losses_862371b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????b
? ?
+__inference_flatten_57_layer_call_fn_862376U8?5
.?+
)?&
inputs??????????
? "???????????b?
L__inference_max_pooling2d_86_layer_call_and_return_conditional_losses_861826?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_86_layer_call_fn_861832?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_57_layer_call_and_return_conditional_losses_862149}
"#()./H?E
>?;
1?.
conv2d_86_input?????????
p 

 
? "%?"
?
0?????????!
? ?
I__inference_sequential_57_layer_call_and_return_conditional_losses_862180}
"#()./H?E
>?;
1?.
conv2d_86_input?????????
p

 
? "%?"
?
0?????????!
? ?
I__inference_sequential_57_layer_call_and_return_conditional_losses_862254t
"#()./??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????!
? ?
I__inference_sequential_57_layer_call_and_return_conditional_losses_862295t
"#()./??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????!
? ?
.__inference_sequential_57_layer_call_fn_861956p
"#()./H?E
>?;
1?.
conv2d_86_input?????????
p 

 
? "??????????!?
.__inference_sequential_57_layer_call_fn_862118p
"#()./H?E
>?;
1?.
conv2d_86_input?????????
p

 
? "??????????!?
.__inference_sequential_57_layer_call_fn_862320g
"#()./??<
5?2
(?%
inputs?????????
p 

 
? "??????????!?
.__inference_sequential_57_layer_call_fn_862345g
"#()./??<
5?2
(?%
inputs?????????
p

 
? "??????????!?
$__inference_signature_wrapper_862213?
"#()./S?P
? 
I?F
D
conv2d_86_input1?.
conv2d_86_input?????????"5?2
0
	dense_169#? 
	dense_169?????????!