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
conv2d_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_62/kernel
}
$conv2d_62/kernel/Read/ReadVariableOpReadVariableOpconv2d_62/kernel*&
_output_shapes
:@*
dtype0
t
conv2d_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_62/bias
m
"conv2d_62/bias/Read/ReadVariableOpReadVariableOpconv2d_62/bias*
_output_shapes
:@*
dtype0
}
dense_102/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_namedense_102/kernel
v
$dense_102/kernel/Read/ReadVariableOpReadVariableOpdense_102/kernel*
_output_shapes
:	?@*
dtype0
t
dense_102/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_102/bias
m
"dense_102/bias/Read/ReadVariableOpReadVariableOpdense_102/bias*
_output_shapes
:@*
dtype0
|
dense_103/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*!
shared_namedense_103/kernel
u
$dense_103/kernel/Read/ReadVariableOpReadVariableOpdense_103/kernel*
_output_shapes

:@@*
dtype0
t
dense_103/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_103/bias
m
"dense_103/bias/Read/ReadVariableOpReadVariableOpdense_103/bias*
_output_shapes
:@*
dtype0
|
dense_104/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*!
shared_namedense_104/kernel
u
$dense_104/kernel/Read/ReadVariableOpReadVariableOpdense_104/kernel*
_output_shapes

:@@*
dtype0
t
dense_104/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_104/bias
m
"dense_104/bias/Read/ReadVariableOpReadVariableOpdense_104/bias*
_output_shapes
:@*
dtype0
|
dense_105/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@!*!
shared_namedense_105/kernel
u
$dense_105/kernel/Read/ReadVariableOpReadVariableOpdense_105/kernel*
_output_shapes

:@!*
dtype0
t
dense_105/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*
shared_namedense_105/bias
m
"dense_105/bias/Read/ReadVariableOpReadVariableOpdense_105/bias*
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
Adam/conv2d_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_62/kernel/m
?
+Adam/conv2d_62/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/kernel/m*&
_output_shapes
:@*
dtype0
?
Adam/conv2d_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_62/bias/m
{
)Adam/conv2d_62/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_102/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*(
shared_nameAdam/dense_102/kernel/m
?
+Adam/dense_102/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_102/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/dense_102/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_102/bias/m
{
)Adam/dense_102/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_102/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_103/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_103/kernel/m
?
+Adam/dense_103/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_103/kernel/m*
_output_shapes

:@@*
dtype0
?
Adam/dense_103/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_103/bias/m
{
)Adam/dense_103/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_103/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_104/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_104/kernel/m
?
+Adam/dense_104/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_104/kernel/m*
_output_shapes

:@@*
dtype0
?
Adam/dense_104/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_104/bias/m
{
)Adam/dense_104/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_104/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_105/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@!*(
shared_nameAdam/dense_105/kernel/m
?
+Adam/dense_105/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_105/kernel/m*
_output_shapes

:@!*
dtype0
?
Adam/dense_105/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*&
shared_nameAdam/dense_105/bias/m
{
)Adam/dense_105/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_105/bias/m*
_output_shapes
:!*
dtype0
?
Adam/conv2d_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_62/kernel/v
?
+Adam/conv2d_62/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/kernel/v*&
_output_shapes
:@*
dtype0
?
Adam/conv2d_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_62/bias/v
{
)Adam/conv2d_62/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_102/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*(
shared_nameAdam/dense_102/kernel/v
?
+Adam/dense_102/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_102/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/dense_102/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_102/bias/v
{
)Adam/dense_102/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_102/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_103/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_103/kernel/v
?
+Adam/dense_103/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_103/kernel/v*
_output_shapes

:@@*
dtype0
?
Adam/dense_103/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_103/bias/v
{
)Adam/dense_103/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_103/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_104/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_104/kernel/v
?
+Adam/dense_104/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_104/kernel/v*
_output_shapes

:@@*
dtype0
?
Adam/dense_104/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_104/bias/v
{
)Adam/dense_104/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_104/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_105/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@!*(
shared_nameAdam/dense_105/kernel/v
?
+Adam/dense_105/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_105/kernel/v*
_output_shapes

:@!*
dtype0
?
Adam/dense_105/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*&
shared_nameAdam/dense_105/bias/v
{
)Adam/dense_105/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_105/bias/v*
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
VARIABLE_VALUEconv2d_62/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_62/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_102/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_102/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_103/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_103/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_104/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_104/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_105/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_105/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/conv2d_62/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_62/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_102/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_102/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_103/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_103/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_104/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_104/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_105/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_105/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_62/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_62/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_102/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_102/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_103/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_103/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_104/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_104/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_105/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_105/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_62_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_62_inputconv2d_62/kernelconv2d_62/biasdense_102/kerneldense_102/biasdense_103/kerneldense_103/biasdense_104/kerneldense_104/biasdense_105/kerneldense_105/bias*
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
$__inference_signature_wrapper_619925
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_62/kernel/Read/ReadVariableOp"conv2d_62/bias/Read/ReadVariableOp$dense_102/kernel/Read/ReadVariableOp"dense_102/bias/Read/ReadVariableOp$dense_103/kernel/Read/ReadVariableOp"dense_103/bias/Read/ReadVariableOp$dense_104/kernel/Read/ReadVariableOp"dense_104/bias/Read/ReadVariableOp$dense_105/kernel/Read/ReadVariableOp"dense_105/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_62/kernel/m/Read/ReadVariableOp)Adam/conv2d_62/bias/m/Read/ReadVariableOp+Adam/dense_102/kernel/m/Read/ReadVariableOp)Adam/dense_102/bias/m/Read/ReadVariableOp+Adam/dense_103/kernel/m/Read/ReadVariableOp)Adam/dense_103/bias/m/Read/ReadVariableOp+Adam/dense_104/kernel/m/Read/ReadVariableOp)Adam/dense_104/bias/m/Read/ReadVariableOp+Adam/dense_105/kernel/m/Read/ReadVariableOp)Adam/dense_105/bias/m/Read/ReadVariableOp+Adam/conv2d_62/kernel/v/Read/ReadVariableOp)Adam/conv2d_62/bias/v/Read/ReadVariableOp+Adam/dense_102/kernel/v/Read/ReadVariableOp)Adam/dense_102/bias/v/Read/ReadVariableOp+Adam/dense_103/kernel/v/Read/ReadVariableOp)Adam/dense_103/bias/v/Read/ReadVariableOp+Adam/dense_104/kernel/v/Read/ReadVariableOp)Adam/dense_104/bias/v/Read/ReadVariableOp+Adam/dense_105/kernel/v/Read/ReadVariableOp)Adam/dense_105/bias/v/Read/ReadVariableOpConst*4
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
__inference__traced_save_620307
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_62/kernelconv2d_62/biasdense_102/kerneldense_102/biasdense_103/kerneldense_103/biasdense_104/kerneldense_104/biasdense_105/kerneldense_105/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_62/kernel/mAdam/conv2d_62/bias/mAdam/dense_102/kernel/mAdam/dense_102/bias/mAdam/dense_103/kernel/mAdam/dense_103/bias/mAdam/dense_104/kernel/mAdam/dense_104/bias/mAdam/dense_105/kernel/mAdam/dense_105/bias/mAdam/conv2d_62/kernel/vAdam/conv2d_62/bias/vAdam/dense_102/kernel/vAdam/dense_102/bias/vAdam/dense_103/kernel/vAdam/dense_103/bias/vAdam/dense_104/kernel/vAdam/dense_104/bias/vAdam/dense_105/kernel/vAdam/dense_105/bias/v*3
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
"__inference__traced_restore_620434ו
?
?
E__inference_conv2d_62_layer_call_and_return_conditional_losses_620068

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

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

?
E__inference_dense_103_layer_call_and_return_conditional_losses_620119

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
b
F__inference_flatten_41_layer_call_and_return_conditional_losses_619575

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
*__inference_dense_105_layer_call_fn_620167

inputs
unknown:@!
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
E__inference_dense_105_layer_call_and_return_conditional_losses_6196382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
.__inference_sequential_41_layer_call_fn_619668
conv2d_62_input!
unknown:@
	unknown_0:@
	unknown_1:	?@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@!
	unknown_8:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_62_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
I__inference_sequential_41_layer_call_and_return_conditional_losses_6196452
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
_user_specified_nameconv2d_62_input
?

?
E__inference_dense_102_layer_call_and_return_conditional_losses_620099

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?R
?
__inference__traced_save_620307
file_prefix/
+savev2_conv2d_62_kernel_read_readvariableop-
)savev2_conv2d_62_bias_read_readvariableop/
+savev2_dense_102_kernel_read_readvariableop-
)savev2_dense_102_bias_read_readvariableop/
+savev2_dense_103_kernel_read_readvariableop-
)savev2_dense_103_bias_read_readvariableop/
+savev2_dense_104_kernel_read_readvariableop-
)savev2_dense_104_bias_read_readvariableop/
+savev2_dense_105_kernel_read_readvariableop-
)savev2_dense_105_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_62_kernel_m_read_readvariableop4
0savev2_adam_conv2d_62_bias_m_read_readvariableop6
2savev2_adam_dense_102_kernel_m_read_readvariableop4
0savev2_adam_dense_102_bias_m_read_readvariableop6
2savev2_adam_dense_103_kernel_m_read_readvariableop4
0savev2_adam_dense_103_bias_m_read_readvariableop6
2savev2_adam_dense_104_kernel_m_read_readvariableop4
0savev2_adam_dense_104_bias_m_read_readvariableop6
2savev2_adam_dense_105_kernel_m_read_readvariableop4
0savev2_adam_dense_105_bias_m_read_readvariableop6
2savev2_adam_conv2d_62_kernel_v_read_readvariableop4
0savev2_adam_conv2d_62_bias_v_read_readvariableop6
2savev2_adam_dense_102_kernel_v_read_readvariableop4
0savev2_adam_dense_102_bias_v_read_readvariableop6
2savev2_adam_dense_103_kernel_v_read_readvariableop4
0savev2_adam_dense_103_bias_v_read_readvariableop6
2savev2_adam_dense_104_kernel_v_read_readvariableop4
0savev2_adam_dense_104_bias_v_read_readvariableop6
2savev2_adam_dense_105_kernel_v_read_readvariableop4
0savev2_adam_dense_105_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_62_kernel_read_readvariableop)savev2_conv2d_62_bias_read_readvariableop+savev2_dense_102_kernel_read_readvariableop)savev2_dense_102_bias_read_readvariableop+savev2_dense_103_kernel_read_readvariableop)savev2_dense_103_bias_read_readvariableop+savev2_dense_104_kernel_read_readvariableop)savev2_dense_104_bias_read_readvariableop+savev2_dense_105_kernel_read_readvariableop)savev2_dense_105_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_62_kernel_m_read_readvariableop0savev2_adam_conv2d_62_bias_m_read_readvariableop2savev2_adam_dense_102_kernel_m_read_readvariableop0savev2_adam_dense_102_bias_m_read_readvariableop2savev2_adam_dense_103_kernel_m_read_readvariableop0savev2_adam_dense_103_bias_m_read_readvariableop2savev2_adam_dense_104_kernel_m_read_readvariableop0savev2_adam_dense_104_bias_m_read_readvariableop2savev2_adam_dense_105_kernel_m_read_readvariableop0savev2_adam_dense_105_bias_m_read_readvariableop2savev2_adam_conv2d_62_kernel_v_read_readvariableop0savev2_adam_conv2d_62_bias_v_read_readvariableop2savev2_adam_dense_102_kernel_v_read_readvariableop0savev2_adam_dense_102_bias_v_read_readvariableop2savev2_adam_dense_103_kernel_v_read_readvariableop0savev2_adam_dense_103_bias_v_read_readvariableop2savev2_adam_dense_104_kernel_v_read_readvariableop0savev2_adam_dense_104_bias_v_read_readvariableop2savev2_adam_dense_105_kernel_v_read_readvariableop0savev2_adam_dense_105_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?: :@:@:	?@:@:@@:@:@@:@:@!:!: : : : : : : : : :@:@:	?@:@:@@:@:@@:@:@!:!:@:@:	?@:@:@@:@:@@:@:@!:!: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$	 

_output_shapes

:@!: 
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
: :,(
&
_output_shapes
:@: 

_output_shapes
:@:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@!: 

_output_shapes
:!:,(
&
_output_shapes
:@: 

_output_shapes
:@:% !

_output_shapes
:	?@: !

_output_shapes
:@:$" 

_output_shapes

:@@: #

_output_shapes
:@:$$ 

_output_shapes

:@@: %

_output_shapes
:@:$& 

_output_shapes

:@!: '

_output_shapes
:!:(

_output_shapes
: 
?
?
E__inference_conv2d_62_layer_call_and_return_conditional_losses_619562

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

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

?
.__inference_sequential_41_layer_call_fn_620057

inputs!
unknown:@
	unknown_0:@
	unknown_1:	?@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@!
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
I__inference_sequential_41_layer_call_and_return_conditional_losses_6197822
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
*__inference_dense_103_layer_call_fn_620128

inputs
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_103_layer_call_and_return_conditional_losses_6196052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
*__inference_conv2d_62_layer_call_fn_620077

inputs!
unknown:@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_6195622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

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
?

?
E__inference_dense_103_layer_call_and_return_conditional_losses_619605

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?E
?

!__inference__wrapped_model_619532
conv2d_62_inputP
6sequential_41_conv2d_62_conv2d_readvariableop_resource:@E
7sequential_41_conv2d_62_biasadd_readvariableop_resource:@I
6sequential_41_dense_102_matmul_readvariableop_resource:	?@E
7sequential_41_dense_102_biasadd_readvariableop_resource:@H
6sequential_41_dense_103_matmul_readvariableop_resource:@@E
7sequential_41_dense_103_biasadd_readvariableop_resource:@H
6sequential_41_dense_104_matmul_readvariableop_resource:@@E
7sequential_41_dense_104_biasadd_readvariableop_resource:@H
6sequential_41_dense_105_matmul_readvariableop_resource:@!E
7sequential_41_dense_105_biasadd_readvariableop_resource:!
identity??.sequential_41/conv2d_62/BiasAdd/ReadVariableOp?-sequential_41/conv2d_62/Conv2D/ReadVariableOp?.sequential_41/dense_102/BiasAdd/ReadVariableOp?-sequential_41/dense_102/MatMul/ReadVariableOp?.sequential_41/dense_103/BiasAdd/ReadVariableOp?-sequential_41/dense_103/MatMul/ReadVariableOp?.sequential_41/dense_104/BiasAdd/ReadVariableOp?-sequential_41/dense_104/MatMul/ReadVariableOp?.sequential_41/dense_105/BiasAdd/ReadVariableOp?-sequential_41/dense_105/MatMul/ReadVariableOp?
-sequential_41/conv2d_62/Conv2D/ReadVariableOpReadVariableOp6sequential_41_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02/
-sequential_41/conv2d_62/Conv2D/ReadVariableOp?
sequential_41/conv2d_62/Conv2DConv2Dconv2d_62_input5sequential_41/conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2 
sequential_41/conv2d_62/Conv2D?
.sequential_41/conv2d_62/BiasAdd/ReadVariableOpReadVariableOp7sequential_41_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_41/conv2d_62/BiasAdd/ReadVariableOp?
sequential_41/conv2d_62/BiasAddBiasAdd'sequential_41/conv2d_62/Conv2D:output:06sequential_41/conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2!
sequential_41/conv2d_62/BiasAdd?
sequential_41/conv2d_62/ReluRelu(sequential_41/conv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
sequential_41/conv2d_62/Relu?
&sequential_41/max_pooling2d_62/MaxPoolMaxPool*sequential_41/conv2d_62/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&sequential_41/max_pooling2d_62/MaxPool?
sequential_41/flatten_41/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2 
sequential_41/flatten_41/Const?
 sequential_41/flatten_41/ReshapeReshape/sequential_41/max_pooling2d_62/MaxPool:output:0'sequential_41/flatten_41/Const:output:0*
T0*(
_output_shapes
:??????????2"
 sequential_41/flatten_41/Reshape?
-sequential_41/dense_102/MatMul/ReadVariableOpReadVariableOp6sequential_41_dense_102_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02/
-sequential_41/dense_102/MatMul/ReadVariableOp?
sequential_41/dense_102/MatMulMatMul)sequential_41/flatten_41/Reshape:output:05sequential_41/dense_102/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
sequential_41/dense_102/MatMul?
.sequential_41/dense_102/BiasAdd/ReadVariableOpReadVariableOp7sequential_41_dense_102_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_41/dense_102/BiasAdd/ReadVariableOp?
sequential_41/dense_102/BiasAddBiasAdd(sequential_41/dense_102/MatMul:product:06sequential_41/dense_102/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
sequential_41/dense_102/BiasAdd?
sequential_41/dense_102/ReluRelu(sequential_41/dense_102/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential_41/dense_102/Relu?
-sequential_41/dense_103/MatMul/ReadVariableOpReadVariableOp6sequential_41_dense_103_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02/
-sequential_41/dense_103/MatMul/ReadVariableOp?
sequential_41/dense_103/MatMulMatMul*sequential_41/dense_102/Relu:activations:05sequential_41/dense_103/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
sequential_41/dense_103/MatMul?
.sequential_41/dense_103/BiasAdd/ReadVariableOpReadVariableOp7sequential_41_dense_103_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_41/dense_103/BiasAdd/ReadVariableOp?
sequential_41/dense_103/BiasAddBiasAdd(sequential_41/dense_103/MatMul:product:06sequential_41/dense_103/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
sequential_41/dense_103/BiasAdd?
sequential_41/dense_103/ReluRelu(sequential_41/dense_103/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential_41/dense_103/Relu?
-sequential_41/dense_104/MatMul/ReadVariableOpReadVariableOp6sequential_41_dense_104_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02/
-sequential_41/dense_104/MatMul/ReadVariableOp?
sequential_41/dense_104/MatMulMatMul*sequential_41/dense_103/Relu:activations:05sequential_41/dense_104/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
sequential_41/dense_104/MatMul?
.sequential_41/dense_104/BiasAdd/ReadVariableOpReadVariableOp7sequential_41_dense_104_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_41/dense_104/BiasAdd/ReadVariableOp?
sequential_41/dense_104/BiasAddBiasAdd(sequential_41/dense_104/MatMul:product:06sequential_41/dense_104/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
sequential_41/dense_104/BiasAdd?
sequential_41/dense_104/ReluRelu(sequential_41/dense_104/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential_41/dense_104/Relu?
-sequential_41/dense_105/MatMul/ReadVariableOpReadVariableOp6sequential_41_dense_105_matmul_readvariableop_resource*
_output_shapes

:@!*
dtype02/
-sequential_41/dense_105/MatMul/ReadVariableOp?
sequential_41/dense_105/MatMulMatMul*sequential_41/dense_104/Relu:activations:05sequential_41/dense_105/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2 
sequential_41/dense_105/MatMul?
.sequential_41/dense_105/BiasAdd/ReadVariableOpReadVariableOp7sequential_41_dense_105_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype020
.sequential_41/dense_105/BiasAdd/ReadVariableOp?
sequential_41/dense_105/BiasAddBiasAdd(sequential_41/dense_105/MatMul:product:06sequential_41/dense_105/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2!
sequential_41/dense_105/BiasAdd?
IdentityIdentity(sequential_41/dense_105/BiasAdd:output:0/^sequential_41/conv2d_62/BiasAdd/ReadVariableOp.^sequential_41/conv2d_62/Conv2D/ReadVariableOp/^sequential_41/dense_102/BiasAdd/ReadVariableOp.^sequential_41/dense_102/MatMul/ReadVariableOp/^sequential_41/dense_103/BiasAdd/ReadVariableOp.^sequential_41/dense_103/MatMul/ReadVariableOp/^sequential_41/dense_104/BiasAdd/ReadVariableOp.^sequential_41/dense_104/MatMul/ReadVariableOp/^sequential_41/dense_105/BiasAdd/ReadVariableOp.^sequential_41/dense_105/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 2`
.sequential_41/conv2d_62/BiasAdd/ReadVariableOp.sequential_41/conv2d_62/BiasAdd/ReadVariableOp2^
-sequential_41/conv2d_62/Conv2D/ReadVariableOp-sequential_41/conv2d_62/Conv2D/ReadVariableOp2`
.sequential_41/dense_102/BiasAdd/ReadVariableOp.sequential_41/dense_102/BiasAdd/ReadVariableOp2^
-sequential_41/dense_102/MatMul/ReadVariableOp-sequential_41/dense_102/MatMul/ReadVariableOp2`
.sequential_41/dense_103/BiasAdd/ReadVariableOp.sequential_41/dense_103/BiasAdd/ReadVariableOp2^
-sequential_41/dense_103/MatMul/ReadVariableOp-sequential_41/dense_103/MatMul/ReadVariableOp2`
.sequential_41/dense_104/BiasAdd/ReadVariableOp.sequential_41/dense_104/BiasAdd/ReadVariableOp2^
-sequential_41/dense_104/MatMul/ReadVariableOp-sequential_41/dense_104/MatMul/ReadVariableOp2`
.sequential_41/dense_105/BiasAdd/ReadVariableOp.sequential_41/dense_105/BiasAdd/ReadVariableOp2^
-sequential_41/dense_105/MatMul/ReadVariableOp-sequential_41/dense_105/MatMul/ReadVariableOp:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_62_input
?#
?
I__inference_sequential_41_layer_call_and_return_conditional_losses_619645

inputs*
conv2d_62_619563:@
conv2d_62_619565:@#
dense_102_619589:	?@
dense_102_619591:@"
dense_103_619606:@@
dense_103_619608:@"
dense_104_619623:@@
dense_104_619625:@"
dense_105_619639:@!
dense_105_619641:!
identity??!conv2d_62/StatefulPartitionedCall?!dense_102/StatefulPartitionedCall?!dense_103/StatefulPartitionedCall?!dense_104/StatefulPartitionedCall?!dense_105/StatefulPartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_62_619563conv2d_62_619565*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_6195622#
!conv2d_62/StatefulPartitionedCall?
 max_pooling2d_62/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_6195382"
 max_pooling2d_62/PartitionedCall?
flatten_41/PartitionedCallPartitionedCall)max_pooling2d_62/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_41_layer_call_and_return_conditional_losses_6195752
flatten_41/PartitionedCall?
!dense_102/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_102_619589dense_102_619591*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_102_layer_call_and_return_conditional_losses_6195882#
!dense_102/StatefulPartitionedCall?
!dense_103/StatefulPartitionedCallStatefulPartitionedCall*dense_102/StatefulPartitionedCall:output:0dense_103_619606dense_103_619608*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_103_layer_call_and_return_conditional_losses_6196052#
!dense_103/StatefulPartitionedCall?
!dense_104/StatefulPartitionedCallStatefulPartitionedCall*dense_103/StatefulPartitionedCall:output:0dense_104_619623dense_104_619625*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_104_layer_call_and_return_conditional_losses_6196222#
!dense_104/StatefulPartitionedCall?
!dense_105/StatefulPartitionedCallStatefulPartitionedCall*dense_104/StatefulPartitionedCall:output:0dense_105_619639dense_105_619641*
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
E__inference_dense_105_layer_call_and_return_conditional_losses_6196382#
!dense_105/StatefulPartitionedCall?
IdentityIdentity*dense_105/StatefulPartitionedCall:output:0"^conv2d_62/StatefulPartitionedCall"^dense_102/StatefulPartitionedCall"^dense_103/StatefulPartitionedCall"^dense_104/StatefulPartitionedCall"^dense_105/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!dense_102/StatefulPartitionedCall!dense_102/StatefulPartitionedCall2F
!dense_103/StatefulPartitionedCall!dense_103/StatefulPartitionedCall2F
!dense_104/StatefulPartitionedCall!dense_104/StatefulPartitionedCall2F
!dense_105/StatefulPartitionedCall!dense_105/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
I__inference_sequential_41_layer_call_and_return_conditional_losses_619782

inputs*
conv2d_62_619754:@
conv2d_62_619756:@#
dense_102_619761:	?@
dense_102_619763:@"
dense_103_619766:@@
dense_103_619768:@"
dense_104_619771:@@
dense_104_619773:@"
dense_105_619776:@!
dense_105_619778:!
identity??!conv2d_62/StatefulPartitionedCall?!dense_102/StatefulPartitionedCall?!dense_103/StatefulPartitionedCall?!dense_104/StatefulPartitionedCall?!dense_105/StatefulPartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_62_619754conv2d_62_619756*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_6195622#
!conv2d_62/StatefulPartitionedCall?
 max_pooling2d_62/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_6195382"
 max_pooling2d_62/PartitionedCall?
flatten_41/PartitionedCallPartitionedCall)max_pooling2d_62/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_41_layer_call_and_return_conditional_losses_6195752
flatten_41/PartitionedCall?
!dense_102/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_102_619761dense_102_619763*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_102_layer_call_and_return_conditional_losses_6195882#
!dense_102/StatefulPartitionedCall?
!dense_103/StatefulPartitionedCallStatefulPartitionedCall*dense_102/StatefulPartitionedCall:output:0dense_103_619766dense_103_619768*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_103_layer_call_and_return_conditional_losses_6196052#
!dense_103/StatefulPartitionedCall?
!dense_104/StatefulPartitionedCallStatefulPartitionedCall*dense_103/StatefulPartitionedCall:output:0dense_104_619771dense_104_619773*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_104_layer_call_and_return_conditional_losses_6196222#
!dense_104/StatefulPartitionedCall?
!dense_105/StatefulPartitionedCallStatefulPartitionedCall*dense_104/StatefulPartitionedCall:output:0dense_105_619776dense_105_619778*
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
E__inference_dense_105_layer_call_and_return_conditional_losses_6196382#
!dense_105/StatefulPartitionedCall?
IdentityIdentity*dense_105/StatefulPartitionedCall:output:0"^conv2d_62/StatefulPartitionedCall"^dense_102/StatefulPartitionedCall"^dense_103/StatefulPartitionedCall"^dense_104/StatefulPartitionedCall"^dense_105/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!dense_102/StatefulPartitionedCall!dense_102/StatefulPartitionedCall2F
!dense_103/StatefulPartitionedCall!dense_103/StatefulPartitionedCall2F
!dense_104/StatefulPartitionedCall!dense_104/StatefulPartitionedCall2F
!dense_105/StatefulPartitionedCall!dense_105/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_41_layer_call_fn_620032

inputs!
unknown:@
	unknown_0:@
	unknown_1:	?@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@!
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
I__inference_sequential_41_layer_call_and_return_conditional_losses_6196452
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
?5
?
I__inference_sequential_41_layer_call_and_return_conditional_losses_620007

inputsB
(conv2d_62_conv2d_readvariableop_resource:@7
)conv2d_62_biasadd_readvariableop_resource:@;
(dense_102_matmul_readvariableop_resource:	?@7
)dense_102_biasadd_readvariableop_resource:@:
(dense_103_matmul_readvariableop_resource:@@7
)dense_103_biasadd_readvariableop_resource:@:
(dense_104_matmul_readvariableop_resource:@@7
)dense_104_biasadd_readvariableop_resource:@:
(dense_105_matmul_readvariableop_resource:@!7
)dense_105_biasadd_readvariableop_resource:!
identity?? conv2d_62/BiasAdd/ReadVariableOp?conv2d_62/Conv2D/ReadVariableOp? dense_102/BiasAdd/ReadVariableOp?dense_102/MatMul/ReadVariableOp? dense_103/BiasAdd/ReadVariableOp?dense_103/MatMul/ReadVariableOp? dense_104/BiasAdd/ReadVariableOp?dense_104/MatMul/ReadVariableOp? dense_105/BiasAdd/ReadVariableOp?dense_105/MatMul/ReadVariableOp?
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_62/Conv2D/ReadVariableOp?
conv2d_62/Conv2DConv2Dinputs'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_62/Conv2D?
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_62/BiasAdd/ReadVariableOp?
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_62/BiasAdd~
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_62/Relu?
max_pooling2d_62/MaxPoolMaxPoolconv2d_62/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_62/MaxPoolu
flatten_41/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
flatten_41/Const?
flatten_41/ReshapeReshape!max_pooling2d_62/MaxPool:output:0flatten_41/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_41/Reshape?
dense_102/MatMul/ReadVariableOpReadVariableOp(dense_102_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02!
dense_102/MatMul/ReadVariableOp?
dense_102/MatMulMatMulflatten_41/Reshape:output:0'dense_102/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_102/MatMul?
 dense_102/BiasAdd/ReadVariableOpReadVariableOp)dense_102_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_102/BiasAdd/ReadVariableOp?
dense_102/BiasAddBiasAdddense_102/MatMul:product:0(dense_102/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_102/BiasAddv
dense_102/ReluReludense_102/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_102/Relu?
dense_103/MatMul/ReadVariableOpReadVariableOp(dense_103_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_103/MatMul/ReadVariableOp?
dense_103/MatMulMatMuldense_102/Relu:activations:0'dense_103/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_103/MatMul?
 dense_103/BiasAdd/ReadVariableOpReadVariableOp)dense_103_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_103/BiasAdd/ReadVariableOp?
dense_103/BiasAddBiasAdddense_103/MatMul:product:0(dense_103/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_103/BiasAddv
dense_103/ReluReludense_103/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_103/Relu?
dense_104/MatMul/ReadVariableOpReadVariableOp(dense_104_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_104/MatMul/ReadVariableOp?
dense_104/MatMulMatMuldense_103/Relu:activations:0'dense_104/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_104/MatMul?
 dense_104/BiasAdd/ReadVariableOpReadVariableOp)dense_104_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_104/BiasAdd/ReadVariableOp?
dense_104/BiasAddBiasAdddense_104/MatMul:product:0(dense_104/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_104/BiasAddv
dense_104/ReluReludense_104/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_104/Relu?
dense_105/MatMul/ReadVariableOpReadVariableOp(dense_105_matmul_readvariableop_resource*
_output_shapes

:@!*
dtype02!
dense_105/MatMul/ReadVariableOp?
dense_105/MatMulMatMuldense_104/Relu:activations:0'dense_105/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2
dense_105/MatMul?
 dense_105/BiasAdd/ReadVariableOpReadVariableOp)dense_105_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype02"
 dense_105/BiasAdd/ReadVariableOp?
dense_105/BiasAddBiasAdddense_105/MatMul:product:0(dense_105/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2
dense_105/BiasAdd?
IdentityIdentitydense_105/BiasAdd:output:0!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^dense_102/BiasAdd/ReadVariableOp ^dense_102/MatMul/ReadVariableOp!^dense_103/BiasAdd/ReadVariableOp ^dense_103/MatMul/ReadVariableOp!^dense_104/BiasAdd/ReadVariableOp ^dense_104/MatMul/ReadVariableOp!^dense_105/BiasAdd/ReadVariableOp ^dense_105/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 dense_102/BiasAdd/ReadVariableOp dense_102/BiasAdd/ReadVariableOp2B
dense_102/MatMul/ReadVariableOpdense_102/MatMul/ReadVariableOp2D
 dense_103/BiasAdd/ReadVariableOp dense_103/BiasAdd/ReadVariableOp2B
dense_103/MatMul/ReadVariableOpdense_103/MatMul/ReadVariableOp2D
 dense_104/BiasAdd/ReadVariableOp dense_104/BiasAdd/ReadVariableOp2B
dense_104/MatMul/ReadVariableOpdense_104/MatMul/ReadVariableOp2D
 dense_105/BiasAdd/ReadVariableOp dense_105/BiasAdd/ReadVariableOp2B
dense_105/MatMul/ReadVariableOpdense_105/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_62_layer_call_fn_619544

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
L__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_6195382
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
?
h
L__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_619538

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
??
?
"__inference__traced_restore_620434
file_prefix;
!assignvariableop_conv2d_62_kernel:@/
!assignvariableop_1_conv2d_62_bias:@6
#assignvariableop_2_dense_102_kernel:	?@/
!assignvariableop_3_dense_102_bias:@5
#assignvariableop_4_dense_103_kernel:@@/
!assignvariableop_5_dense_103_bias:@5
#assignvariableop_6_dense_104_kernel:@@/
!assignvariableop_7_dense_104_bias:@5
#assignvariableop_8_dense_105_kernel:@!/
!assignvariableop_9_dense_105_bias:!'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: E
+assignvariableop_19_adam_conv2d_62_kernel_m:@7
)assignvariableop_20_adam_conv2d_62_bias_m:@>
+assignvariableop_21_adam_dense_102_kernel_m:	?@7
)assignvariableop_22_adam_dense_102_bias_m:@=
+assignvariableop_23_adam_dense_103_kernel_m:@@7
)assignvariableop_24_adam_dense_103_bias_m:@=
+assignvariableop_25_adam_dense_104_kernel_m:@@7
)assignvariableop_26_adam_dense_104_bias_m:@=
+assignvariableop_27_adam_dense_105_kernel_m:@!7
)assignvariableop_28_adam_dense_105_bias_m:!E
+assignvariableop_29_adam_conv2d_62_kernel_v:@7
)assignvariableop_30_adam_conv2d_62_bias_v:@>
+assignvariableop_31_adam_dense_102_kernel_v:	?@7
)assignvariableop_32_adam_dense_102_bias_v:@=
+assignvariableop_33_adam_dense_103_kernel_v:@@7
)assignvariableop_34_adam_dense_103_bias_v:@=
+assignvariableop_35_adam_dense_104_kernel_v:@@7
)assignvariableop_36_adam_dense_104_bias_v:@=
+assignvariableop_37_adam_dense_105_kernel_v:@!7
)assignvariableop_38_adam_dense_105_bias_v:!
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
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_62_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_62_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_102_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_102_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_103_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_103_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_104_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_104_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_105_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_105_biasIdentity_9:output:0"/device:CPU:0*
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
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_conv2d_62_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_conv2d_62_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_102_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_102_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_103_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_103_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_dense_104_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_104_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_105_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_105_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_62_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_62_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_dense_102_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_102_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_dense_103_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_dense_103_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_dense_104_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_dense_104_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_dense_105_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_105_bias_vIdentity_38:output:0"/device:CPU:0*
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
?5
?
I__inference_sequential_41_layer_call_and_return_conditional_losses_619966

inputsB
(conv2d_62_conv2d_readvariableop_resource:@7
)conv2d_62_biasadd_readvariableop_resource:@;
(dense_102_matmul_readvariableop_resource:	?@7
)dense_102_biasadd_readvariableop_resource:@:
(dense_103_matmul_readvariableop_resource:@@7
)dense_103_biasadd_readvariableop_resource:@:
(dense_104_matmul_readvariableop_resource:@@7
)dense_104_biasadd_readvariableop_resource:@:
(dense_105_matmul_readvariableop_resource:@!7
)dense_105_biasadd_readvariableop_resource:!
identity?? conv2d_62/BiasAdd/ReadVariableOp?conv2d_62/Conv2D/ReadVariableOp? dense_102/BiasAdd/ReadVariableOp?dense_102/MatMul/ReadVariableOp? dense_103/BiasAdd/ReadVariableOp?dense_103/MatMul/ReadVariableOp? dense_104/BiasAdd/ReadVariableOp?dense_104/MatMul/ReadVariableOp? dense_105/BiasAdd/ReadVariableOp?dense_105/MatMul/ReadVariableOp?
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_62/Conv2D/ReadVariableOp?
conv2d_62/Conv2DConv2Dinputs'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_62/Conv2D?
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_62/BiasAdd/ReadVariableOp?
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_62/BiasAdd~
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_62/Relu?
max_pooling2d_62/MaxPoolMaxPoolconv2d_62/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_62/MaxPoolu
flatten_41/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
flatten_41/Const?
flatten_41/ReshapeReshape!max_pooling2d_62/MaxPool:output:0flatten_41/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_41/Reshape?
dense_102/MatMul/ReadVariableOpReadVariableOp(dense_102_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02!
dense_102/MatMul/ReadVariableOp?
dense_102/MatMulMatMulflatten_41/Reshape:output:0'dense_102/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_102/MatMul?
 dense_102/BiasAdd/ReadVariableOpReadVariableOp)dense_102_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_102/BiasAdd/ReadVariableOp?
dense_102/BiasAddBiasAdddense_102/MatMul:product:0(dense_102/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_102/BiasAddv
dense_102/ReluReludense_102/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_102/Relu?
dense_103/MatMul/ReadVariableOpReadVariableOp(dense_103_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_103/MatMul/ReadVariableOp?
dense_103/MatMulMatMuldense_102/Relu:activations:0'dense_103/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_103/MatMul?
 dense_103/BiasAdd/ReadVariableOpReadVariableOp)dense_103_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_103/BiasAdd/ReadVariableOp?
dense_103/BiasAddBiasAdddense_103/MatMul:product:0(dense_103/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_103/BiasAddv
dense_103/ReluReludense_103/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_103/Relu?
dense_104/MatMul/ReadVariableOpReadVariableOp(dense_104_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_104/MatMul/ReadVariableOp?
dense_104/MatMulMatMuldense_103/Relu:activations:0'dense_104/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_104/MatMul?
 dense_104/BiasAdd/ReadVariableOpReadVariableOp)dense_104_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_104/BiasAdd/ReadVariableOp?
dense_104/BiasAddBiasAdddense_104/MatMul:product:0(dense_104/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_104/BiasAddv
dense_104/ReluReludense_104/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_104/Relu?
dense_105/MatMul/ReadVariableOpReadVariableOp(dense_105_matmul_readvariableop_resource*
_output_shapes

:@!*
dtype02!
dense_105/MatMul/ReadVariableOp?
dense_105/MatMulMatMuldense_104/Relu:activations:0'dense_105/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2
dense_105/MatMul?
 dense_105/BiasAdd/ReadVariableOpReadVariableOp)dense_105_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype02"
 dense_105/BiasAdd/ReadVariableOp?
dense_105/BiasAddBiasAdddense_105/MatMul:product:0(dense_105/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2
dense_105/BiasAdd?
IdentityIdentitydense_105/BiasAdd:output:0!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^dense_102/BiasAdd/ReadVariableOp ^dense_102/MatMul/ReadVariableOp!^dense_103/BiasAdd/ReadVariableOp ^dense_103/MatMul/ReadVariableOp!^dense_104/BiasAdd/ReadVariableOp ^dense_104/MatMul/ReadVariableOp!^dense_105/BiasAdd/ReadVariableOp ^dense_105/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 dense_102/BiasAdd/ReadVariableOp dense_102/BiasAdd/ReadVariableOp2B
dense_102/MatMul/ReadVariableOpdense_102/MatMul/ReadVariableOp2D
 dense_103/BiasAdd/ReadVariableOp dense_103/BiasAdd/ReadVariableOp2B
dense_103/MatMul/ReadVariableOpdense_103/MatMul/ReadVariableOp2D
 dense_104/BiasAdd/ReadVariableOp dense_104/BiasAdd/ReadVariableOp2B
dense_104/MatMul/ReadVariableOpdense_104/MatMul/ReadVariableOp2D
 dense_105/BiasAdd/ReadVariableOp dense_105/BiasAdd/ReadVariableOp2B
dense_105/MatMul/ReadVariableOpdense_105/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_41_layer_call_fn_620088

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
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_41_layer_call_and_return_conditional_losses_6195752
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?#
?
I__inference_sequential_41_layer_call_and_return_conditional_losses_619892
conv2d_62_input*
conv2d_62_619864:@
conv2d_62_619866:@#
dense_102_619871:	?@
dense_102_619873:@"
dense_103_619876:@@
dense_103_619878:@"
dense_104_619881:@@
dense_104_619883:@"
dense_105_619886:@!
dense_105_619888:!
identity??!conv2d_62/StatefulPartitionedCall?!dense_102/StatefulPartitionedCall?!dense_103/StatefulPartitionedCall?!dense_104/StatefulPartitionedCall?!dense_105/StatefulPartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCallconv2d_62_inputconv2d_62_619864conv2d_62_619866*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_6195622#
!conv2d_62/StatefulPartitionedCall?
 max_pooling2d_62/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_6195382"
 max_pooling2d_62/PartitionedCall?
flatten_41/PartitionedCallPartitionedCall)max_pooling2d_62/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_41_layer_call_and_return_conditional_losses_6195752
flatten_41/PartitionedCall?
!dense_102/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_102_619871dense_102_619873*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_102_layer_call_and_return_conditional_losses_6195882#
!dense_102/StatefulPartitionedCall?
!dense_103/StatefulPartitionedCallStatefulPartitionedCall*dense_102/StatefulPartitionedCall:output:0dense_103_619876dense_103_619878*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_103_layer_call_and_return_conditional_losses_6196052#
!dense_103/StatefulPartitionedCall?
!dense_104/StatefulPartitionedCallStatefulPartitionedCall*dense_103/StatefulPartitionedCall:output:0dense_104_619881dense_104_619883*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_104_layer_call_and_return_conditional_losses_6196222#
!dense_104/StatefulPartitionedCall?
!dense_105/StatefulPartitionedCallStatefulPartitionedCall*dense_104/StatefulPartitionedCall:output:0dense_105_619886dense_105_619888*
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
E__inference_dense_105_layer_call_and_return_conditional_losses_6196382#
!dense_105/StatefulPartitionedCall?
IdentityIdentity*dense_105/StatefulPartitionedCall:output:0"^conv2d_62/StatefulPartitionedCall"^dense_102/StatefulPartitionedCall"^dense_103/StatefulPartitionedCall"^dense_104/StatefulPartitionedCall"^dense_105/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!dense_102/StatefulPartitionedCall!dense_102/StatefulPartitionedCall2F
!dense_103/StatefulPartitionedCall!dense_103/StatefulPartitionedCall2F
!dense_104/StatefulPartitionedCall!dense_104/StatefulPartitionedCall2F
!dense_105/StatefulPartitionedCall!dense_105/StatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_62_input
?
?
*__inference_dense_104_layer_call_fn_620148

inputs
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_104_layer_call_and_return_conditional_losses_6196222
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?#
?
I__inference_sequential_41_layer_call_and_return_conditional_losses_619861
conv2d_62_input*
conv2d_62_619833:@
conv2d_62_619835:@#
dense_102_619840:	?@
dense_102_619842:@"
dense_103_619845:@@
dense_103_619847:@"
dense_104_619850:@@
dense_104_619852:@"
dense_105_619855:@!
dense_105_619857:!
identity??!conv2d_62/StatefulPartitionedCall?!dense_102/StatefulPartitionedCall?!dense_103/StatefulPartitionedCall?!dense_104/StatefulPartitionedCall?!dense_105/StatefulPartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCallconv2d_62_inputconv2d_62_619833conv2d_62_619835*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_6195622#
!conv2d_62/StatefulPartitionedCall?
 max_pooling2d_62/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_6195382"
 max_pooling2d_62/PartitionedCall?
flatten_41/PartitionedCallPartitionedCall)max_pooling2d_62/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_41_layer_call_and_return_conditional_losses_6195752
flatten_41/PartitionedCall?
!dense_102/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_102_619840dense_102_619842*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_102_layer_call_and_return_conditional_losses_6195882#
!dense_102/StatefulPartitionedCall?
!dense_103/StatefulPartitionedCallStatefulPartitionedCall*dense_102/StatefulPartitionedCall:output:0dense_103_619845dense_103_619847*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_103_layer_call_and_return_conditional_losses_6196052#
!dense_103/StatefulPartitionedCall?
!dense_104/StatefulPartitionedCallStatefulPartitionedCall*dense_103/StatefulPartitionedCall:output:0dense_104_619850dense_104_619852*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_104_layer_call_and_return_conditional_losses_6196222#
!dense_104/StatefulPartitionedCall?
!dense_105/StatefulPartitionedCallStatefulPartitionedCall*dense_104/StatefulPartitionedCall:output:0dense_105_619855dense_105_619857*
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
E__inference_dense_105_layer_call_and_return_conditional_losses_6196382#
!dense_105/StatefulPartitionedCall?
IdentityIdentity*dense_105/StatefulPartitionedCall:output:0"^conv2d_62/StatefulPartitionedCall"^dense_102/StatefulPartitionedCall"^dense_103/StatefulPartitionedCall"^dense_104/StatefulPartitionedCall"^dense_105/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!dense_102/StatefulPartitionedCall!dense_102/StatefulPartitionedCall2F
!dense_103/StatefulPartitionedCall!dense_103/StatefulPartitionedCall2F
!dense_104/StatefulPartitionedCall!dense_104/StatefulPartitionedCall2F
!dense_105/StatefulPartitionedCall!dense_105/StatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_62_input
?
?
*__inference_dense_102_layer_call_fn_620108

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_102_layer_call_and_return_conditional_losses_6195882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
$__inference_signature_wrapper_619925
conv2d_62_input!
unknown:@
	unknown_0:@
	unknown_1:	?@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@!
	unknown_8:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_62_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
!__inference__wrapped_model_6195322
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
_user_specified_nameconv2d_62_input
?

?
.__inference_sequential_41_layer_call_fn_619830
conv2d_62_input!
unknown:@
	unknown_0:@
	unknown_1:	?@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@!
	unknown_8:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_62_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
I__inference_sequential_41_layer_call_and_return_conditional_losses_6197822
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
_user_specified_nameconv2d_62_input
?

?
E__inference_dense_104_layer_call_and_return_conditional_losses_620139

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
b
F__inference_flatten_41_layer_call_and_return_conditional_losses_620083

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
E__inference_dense_104_layer_call_and_return_conditional_losses_619622

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
E__inference_dense_102_layer_call_and_return_conditional_losses_619588

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_105_layer_call_and_return_conditional_losses_619638

inputs0
matmul_readvariableop_resource:@!-
biasadd_readvariableop_resource:!
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@!*
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
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
E__inference_dense_105_layer_call_and_return_conditional_losses_620158

inputs0
matmul_readvariableop_resource:@!-
biasadd_readvariableop_resource:!
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@!*
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
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
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
conv2d_62_input@
!serving_default_conv2d_62_input:0?????????=
	dense_1050
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
_tf_keras_sequential?>{"name": "sequential_41", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_41", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_62_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_62", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_41", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_102", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_103", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_104", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_105", "trainable": true, "dtype": "float32", "units": 33, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 16, 16, 3]}, "float32", "conv2d_62_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_41", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_62_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_62", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4}, {"class_name": "Flatten", "config": {"name": "flatten_41", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_102", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_103", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}, {"class_name": "Dense", "config": {"name": "dense_104", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14}, {"class_name": "Dense", "config": {"name": "dense_105", "trainable": true, "dtype": "float32", "units": 33, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}, "shared_object_id": 20}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 21}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
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
{"name": "conv2d_62", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 3]}}
?
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "max_pooling2d_62", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_62", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 22}}
?
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "flatten_41", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_41", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 23}}
?

kernel
bias
regularization_losses
	variables
 trainable_variables
!	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_102", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_102", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 3136}}, "shared_object_id": 24}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3136]}}
?

"kernel
#bias
$regularization_losses
%	variables
&trainable_variables
'	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_103", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_103", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?

(kernel
)bias
*regularization_losses
+	variables
,trainable_variables
-	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_104", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_104", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 26}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?

.kernel
/bias
0regularization_losses
1	variables
2trainable_variables
3	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_105", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_105", "trainable": true, "dtype": "float32", "units": 33, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 27}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
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
*:(@2conv2d_62/kernel
:@2conv2d_62/bias
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
#:!	?@2dense_102/kernel
:@2dense_102/bias
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
": @@2dense_103/kernel
:@2dense_103/bias
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
": @@2dense_104/kernel
:@2dense_104/bias
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
": @!2dense_105/kernel
:!2dense_105/bias
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
/:-@2Adam/conv2d_62/kernel/m
!:@2Adam/conv2d_62/bias/m
(:&	?@2Adam/dense_102/kernel/m
!:@2Adam/dense_102/bias/m
':%@@2Adam/dense_103/kernel/m
!:@2Adam/dense_103/bias/m
':%@@2Adam/dense_104/kernel/m
!:@2Adam/dense_104/bias/m
':%@!2Adam/dense_105/kernel/m
!:!2Adam/dense_105/bias/m
/:-@2Adam/conv2d_62/kernel/v
!:@2Adam/conv2d_62/bias/v
(:&	?@2Adam/dense_102/kernel/v
!:@2Adam/dense_102/bias/v
':%@@2Adam/dense_103/kernel/v
!:@2Adam/dense_103/bias/v
':%@@2Adam/dense_104/kernel/v
!:@2Adam/dense_104/bias/v
':%@!2Adam/dense_105/kernel/v
!:!2Adam/dense_105/bias/v
?2?
I__inference_sequential_41_layer_call_and_return_conditional_losses_619966
I__inference_sequential_41_layer_call_and_return_conditional_losses_620007
I__inference_sequential_41_layer_call_and_return_conditional_losses_619861
I__inference_sequential_41_layer_call_and_return_conditional_losses_619892?
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
!__inference__wrapped_model_619532?
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
conv2d_62_input?????????
?2?
.__inference_sequential_41_layer_call_fn_619668
.__inference_sequential_41_layer_call_fn_620032
.__inference_sequential_41_layer_call_fn_620057
.__inference_sequential_41_layer_call_fn_619830?
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
E__inference_conv2d_62_layer_call_and_return_conditional_losses_620068?
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
*__inference_conv2d_62_layer_call_fn_620077?
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
L__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_619538?
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
1__inference_max_pooling2d_62_layer_call_fn_619544?
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
F__inference_flatten_41_layer_call_and_return_conditional_losses_620083?
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
+__inference_flatten_41_layer_call_fn_620088?
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
E__inference_dense_102_layer_call_and_return_conditional_losses_620099?
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
*__inference_dense_102_layer_call_fn_620108?
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
E__inference_dense_103_layer_call_and_return_conditional_losses_620119?
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
*__inference_dense_103_layer_call_fn_620128?
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
E__inference_dense_104_layer_call_and_return_conditional_losses_620139?
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
*__inference_dense_104_layer_call_fn_620148?
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
E__inference_dense_105_layer_call_and_return_conditional_losses_620158?
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
*__inference_dense_105_layer_call_fn_620167?
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
$__inference_signature_wrapper_619925conv2d_62_input"?
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
!__inference__wrapped_model_619532?
"#()./@?=
6?3
1?.
conv2d_62_input?????????
? "5?2
0
	dense_105#? 
	dense_105?????????!?
E__inference_conv2d_62_layer_call_and_return_conditional_losses_620068l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????@
? ?
*__inference_conv2d_62_layer_call_fn_620077_7?4
-?*
(?%
inputs?????????
? " ??????????@?
E__inference_dense_102_layer_call_and_return_conditional_losses_620099]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? ~
*__inference_dense_102_layer_call_fn_620108P0?-
&?#
!?
inputs??????????
? "??????????@?
E__inference_dense_103_layer_call_and_return_conditional_losses_620119\"#/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????@
? }
*__inference_dense_103_layer_call_fn_620128O"#/?,
%?"
 ?
inputs?????????@
? "??????????@?
E__inference_dense_104_layer_call_and_return_conditional_losses_620139\()/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????@
? }
*__inference_dense_104_layer_call_fn_620148O()/?,
%?"
 ?
inputs?????????@
? "??????????@?
E__inference_dense_105_layer_call_and_return_conditional_losses_620158\.//?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????!
? }
*__inference_dense_105_layer_call_fn_620167O.//?,
%?"
 ?
inputs?????????@
? "??????????!?
F__inference_flatten_41_layer_call_and_return_conditional_losses_620083a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????
? ?
+__inference_flatten_41_layer_call_fn_620088T7?4
-?*
(?%
inputs?????????@
? "????????????
L__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_619538?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_62_layer_call_fn_619544?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_41_layer_call_and_return_conditional_losses_619861}
"#()./H?E
>?;
1?.
conv2d_62_input?????????
p 

 
? "%?"
?
0?????????!
? ?
I__inference_sequential_41_layer_call_and_return_conditional_losses_619892}
"#()./H?E
>?;
1?.
conv2d_62_input?????????
p

 
? "%?"
?
0?????????!
? ?
I__inference_sequential_41_layer_call_and_return_conditional_losses_619966t
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
I__inference_sequential_41_layer_call_and_return_conditional_losses_620007t
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
.__inference_sequential_41_layer_call_fn_619668p
"#()./H?E
>?;
1?.
conv2d_62_input?????????
p 

 
? "??????????!?
.__inference_sequential_41_layer_call_fn_619830p
"#()./H?E
>?;
1?.
conv2d_62_input?????????
p

 
? "??????????!?
.__inference_sequential_41_layer_call_fn_620032g
"#()./??<
5?2
(?%
inputs?????????
p 

 
? "??????????!?
.__inference_sequential_41_layer_call_fn_620057g
"#()./??<
5?2
(?%
inputs?????????
p

 
? "??????????!?
$__inference_signature_wrapper_619925?
"#()./S?P
? 
I?F
D
conv2d_62_input1?.
conv2d_62_input?????????"5?2
0
	dense_105#? 
	dense_105?????????!