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
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??
?
conv2d_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_69/kernel
}
$conv2d_69/kernel/Read/ReadVariableOpReadVariableOpconv2d_69/kernel*&
_output_shapes
:@*
dtype0
t
conv2d_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_69/bias
m
"conv2d_69/bias/Read/ReadVariableOpReadVariableOpconv2d_69/bias*
_output_shapes
:@*
dtype0
?
conv2d_70/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_70/kernel
}
$conv2d_70/kernel/Read/ReadVariableOpReadVariableOpconv2d_70/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_70/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_70/bias
m
"conv2d_70/bias/Read/ReadVariableOpReadVariableOpconv2d_70/bias*
_output_shapes
:@*
dtype0
~
dense_122/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_122/kernel
w
$dense_122/kernel/Read/ReadVariableOpReadVariableOpdense_122/kernel* 
_output_shapes
:
??*
dtype0
u
dense_122/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_122/bias
n
"dense_122/bias/Read/ReadVariableOpReadVariableOpdense_122/bias*
_output_shapes	
:?*
dtype0
~
dense_123/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_123/kernel
w
$dense_123/kernel/Read/ReadVariableOpReadVariableOpdense_123/kernel* 
_output_shapes
:
??*
dtype0
u
dense_123/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_123/bias
n
"dense_123/bias/Read/ReadVariableOpReadVariableOpdense_123/bias*
_output_shapes	
:?*
dtype0
~
dense_124/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_124/kernel
w
$dense_124/kernel/Read/ReadVariableOpReadVariableOpdense_124/kernel* 
_output_shapes
:
??*
dtype0
u
dense_124/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_124/bias
n
"dense_124/bias/Read/ReadVariableOpReadVariableOpdense_124/bias*
_output_shapes	
:?*
dtype0
}
dense_125/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?!*!
shared_namedense_125/kernel
v
$dense_125/kernel/Read/ReadVariableOpReadVariableOpdense_125/kernel*
_output_shapes
:	?!*
dtype0
t
dense_125/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*
shared_namedense_125/bias
m
"dense_125/bias/Read/ReadVariableOpReadVariableOpdense_125/bias*
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
Adam/conv2d_69/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_69/kernel/m
?
+Adam/conv2d_69/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_69/kernel/m*&
_output_shapes
:@*
dtype0
?
Adam/conv2d_69/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_69/bias/m
{
)Adam/conv2d_69/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_69/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_70/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_70/kernel/m
?
+Adam/conv2d_70/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_70/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_70/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_70/bias/m
{
)Adam/conv2d_70/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_70/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_122/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_122/kernel/m
?
+Adam/dense_122/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_122/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_122/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_122/bias/m
|
)Adam/dense_122/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_122/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_123/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_123/kernel/m
?
+Adam/dense_123/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_123/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_123/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_123/bias/m
|
)Adam/dense_123/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_123/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_124/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_124/kernel/m
?
+Adam/dense_124/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_124/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_124/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_124/bias/m
|
)Adam/dense_124/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_124/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_125/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?!*(
shared_nameAdam/dense_125/kernel/m
?
+Adam/dense_125/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_125/kernel/m*
_output_shapes
:	?!*
dtype0
?
Adam/dense_125/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*&
shared_nameAdam/dense_125/bias/m
{
)Adam/dense_125/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_125/bias/m*
_output_shapes
:!*
dtype0
?
Adam/conv2d_69/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_69/kernel/v
?
+Adam/conv2d_69/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_69/kernel/v*&
_output_shapes
:@*
dtype0
?
Adam/conv2d_69/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_69/bias/v
{
)Adam/conv2d_69/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_69/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_70/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_70/kernel/v
?
+Adam/conv2d_70/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_70/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_70/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_70/bias/v
{
)Adam/conv2d_70/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_70/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_122/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_122/kernel/v
?
+Adam/dense_122/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_122/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_122/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_122/bias/v
|
)Adam/dense_122/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_122/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_123/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_123/kernel/v
?
+Adam/dense_123/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_123/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_123/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_123/bias/v
|
)Adam/dense_123/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_123/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_124/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_124/kernel/v
?
+Adam/dense_124/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_124/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_124/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_124/bias/v
|
)Adam/dense_124/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_124/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_125/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?!*(
shared_nameAdam/dense_125/kernel/v
?
+Adam/dense_125/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_125/kernel/v*
_output_shapes
:	?!*
dtype0
?
Adam/dense_125/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*&
shared_nameAdam/dense_125/bias/v
{
)Adam/dense_125/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_125/bias/v*
_output_shapes
:!*
dtype0

NoOpNoOp
?F
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?F
value?FB?F B?F
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
 regularization_losses
!	variables
"trainable_variables
#	keras_api
R
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
h

4kernel
5bias
6regularization_losses
7	variables
8trainable_variables
9	keras_api
h

:kernel
;bias
<regularization_losses
=	variables
>trainable_variables
?	keras_api
?
@iter

Abeta_1

Bbeta_2
	Cdecay
Dlearning_ratem?m?m?m?(m?)m?.m?/m?4m?5m?:m?;m?v?v?v?v?(v?)v?.v?/v?4v?5v?:v?;v?
 
V
0
1
2
3
(4
)5
.6
/7
48
59
:10
;11
V
0
1
2
3
(4
)5
.6
/7
48
59
:10
;11
?
Elayer_metrics
regularization_losses
	variables

Flayers
Gmetrics
Hnon_trainable_variables
trainable_variables
Ilayer_regularization_losses
 
\Z
VARIABLE_VALUEconv2d_69/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_69/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
Jlayer_metrics
regularization_losses
	variables

Klayers
Lmetrics
Mnon_trainable_variables
trainable_variables
Nlayer_regularization_losses
 
 
 
?
Olayer_metrics
regularization_losses
	variables

Players
Qmetrics
Rnon_trainable_variables
trainable_variables
Slayer_regularization_losses
\Z
VARIABLE_VALUEconv2d_70/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_70/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
Tlayer_metrics
regularization_losses
	variables

Ulayers
Vmetrics
Wnon_trainable_variables
trainable_variables
Xlayer_regularization_losses
 
 
 
?
Ylayer_metrics
 regularization_losses
!	variables

Zlayers
[metrics
\non_trainable_variables
"trainable_variables
]layer_regularization_losses
 
 
 
?
^layer_metrics
$regularization_losses
%	variables

_layers
`metrics
anon_trainable_variables
&trainable_variables
blayer_regularization_losses
\Z
VARIABLE_VALUEdense_122/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_122/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

(0
)1

(0
)1
?
clayer_metrics
*regularization_losses
+	variables

dlayers
emetrics
fnon_trainable_variables
,trainable_variables
glayer_regularization_losses
\Z
VARIABLE_VALUEdense_123/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_123/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

.0
/1

.0
/1
?
hlayer_metrics
0regularization_losses
1	variables

ilayers
jmetrics
knon_trainable_variables
2trainable_variables
llayer_regularization_losses
\Z
VARIABLE_VALUEdense_124/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_124/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

40
51

40
51
?
mlayer_metrics
6regularization_losses
7	variables

nlayers
ometrics
pnon_trainable_variables
8trainable_variables
qlayer_regularization_losses
\Z
VARIABLE_VALUEdense_125/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_125/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

:0
;1

:0
;1
?
rlayer_metrics
<regularization_losses
=	variables

slayers
tmetrics
unon_trainable_variables
>trainable_variables
vlayer_regularization_losses
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
?
0
1
2
3
4
5
6
7
	8

w0
x1
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
	ytotal
	zcount
{	variables
|	keras_api
F
	}total
	~count

_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

y0
z1

{	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

}0
~1

?	variables
}
VARIABLE_VALUEAdam/conv2d_69/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_69/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_70/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_70/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_122/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_122/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_123/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_123/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_124/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_124/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_125/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_125/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_69/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_69/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_70/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_70/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_122/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_122/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_123/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_123/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_124/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_124/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_125/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_125/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_69_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_69_inputconv2d_69/kernelconv2d_69/biasconv2d_70/kernelconv2d_70/biasdense_122/kerneldense_122/biasdense_123/kerneldense_123/biasdense_124/kerneldense_124/biasdense_125/kerneldense_125/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_695679
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_69/kernel/Read/ReadVariableOp"conv2d_69/bias/Read/ReadVariableOp$conv2d_70/kernel/Read/ReadVariableOp"conv2d_70/bias/Read/ReadVariableOp$dense_122/kernel/Read/ReadVariableOp"dense_122/bias/Read/ReadVariableOp$dense_123/kernel/Read/ReadVariableOp"dense_123/bias/Read/ReadVariableOp$dense_124/kernel/Read/ReadVariableOp"dense_124/bias/Read/ReadVariableOp$dense_125/kernel/Read/ReadVariableOp"dense_125/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_69/kernel/m/Read/ReadVariableOp)Adam/conv2d_69/bias/m/Read/ReadVariableOp+Adam/conv2d_70/kernel/m/Read/ReadVariableOp)Adam/conv2d_70/bias/m/Read/ReadVariableOp+Adam/dense_122/kernel/m/Read/ReadVariableOp)Adam/dense_122/bias/m/Read/ReadVariableOp+Adam/dense_123/kernel/m/Read/ReadVariableOp)Adam/dense_123/bias/m/Read/ReadVariableOp+Adam/dense_124/kernel/m/Read/ReadVariableOp)Adam/dense_124/bias/m/Read/ReadVariableOp+Adam/dense_125/kernel/m/Read/ReadVariableOp)Adam/dense_125/bias/m/Read/ReadVariableOp+Adam/conv2d_69/kernel/v/Read/ReadVariableOp)Adam/conv2d_69/bias/v/Read/ReadVariableOp+Adam/conv2d_70/kernel/v/Read/ReadVariableOp)Adam/conv2d_70/bias/v/Read/ReadVariableOp+Adam/dense_122/kernel/v/Read/ReadVariableOp)Adam/dense_122/bias/v/Read/ReadVariableOp+Adam/dense_123/kernel/v/Read/ReadVariableOp)Adam/dense_123/bias/v/Read/ReadVariableOp+Adam/dense_124/kernel/v/Read/ReadVariableOp)Adam/dense_124/bias/v/Read/ReadVariableOp+Adam/dense_125/kernel/v/Read/ReadVariableOp)Adam/dense_125/bias/v/Read/ReadVariableOpConst*:
Tin3
12/	*
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
__inference__traced_save_696123
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_69/kernelconv2d_69/biasconv2d_70/kernelconv2d_70/biasdense_122/kerneldense_122/biasdense_123/kerneldense_123/biasdense_124/kerneldense_124/biasdense_125/kerneldense_125/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_69/kernel/mAdam/conv2d_69/bias/mAdam/conv2d_70/kernel/mAdam/conv2d_70/bias/mAdam/dense_122/kernel/mAdam/dense_122/bias/mAdam/dense_123/kernel/mAdam/dense_123/bias/mAdam/dense_124/kernel/mAdam/dense_124/bias/mAdam/dense_125/kernel/mAdam/dense_125/bias/mAdam/conv2d_69/kernel/vAdam/conv2d_69/bias/vAdam/conv2d_70/kernel/vAdam/conv2d_70/bias/vAdam/dense_122/kernel/vAdam/dense_122/bias/vAdam/dense_123/kernel/vAdam/dense_123/bias/vAdam/dense_124/kernel/vAdam/dense_124/bias/vAdam/dense_125/kernel/vAdam/dense_125/bias/v*9
Tin2
02.*
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
"__inference__traced_restore_696268??
?
?
*__inference_conv2d_69_layer_call_fn_695855

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
E__inference_conv2d_69_layer_call_and_return_conditional_losses_6952502
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
E__inference_dense_122_layer_call_and_return_conditional_losses_695294

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
.__inference_sequential_46_layer_call_fn_695378
conv2d_69_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?!

unknown_10:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_69_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_46_layer_call_and_return_conditional_losses_6953512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_69_input
?
M
1__inference_max_pooling2d_69_layer_call_fn_695220

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
L__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_6952142
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
?
?
*__inference_dense_123_layer_call_fn_695926

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
E__inference_dense_123_layer_call_and_return_conditional_losses_6953112
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
?T
?
!__inference__wrapped_model_695208
conv2d_69_inputP
6sequential_46_conv2d_69_conv2d_readvariableop_resource:@E
7sequential_46_conv2d_69_biasadd_readvariableop_resource:@P
6sequential_46_conv2d_70_conv2d_readvariableop_resource:@@E
7sequential_46_conv2d_70_biasadd_readvariableop_resource:@J
6sequential_46_dense_122_matmul_readvariableop_resource:
??F
7sequential_46_dense_122_biasadd_readvariableop_resource:	?J
6sequential_46_dense_123_matmul_readvariableop_resource:
??F
7sequential_46_dense_123_biasadd_readvariableop_resource:	?J
6sequential_46_dense_124_matmul_readvariableop_resource:
??F
7sequential_46_dense_124_biasadd_readvariableop_resource:	?I
6sequential_46_dense_125_matmul_readvariableop_resource:	?!E
7sequential_46_dense_125_biasadd_readvariableop_resource:!
identity??.sequential_46/conv2d_69/BiasAdd/ReadVariableOp?-sequential_46/conv2d_69/Conv2D/ReadVariableOp?.sequential_46/conv2d_70/BiasAdd/ReadVariableOp?-sequential_46/conv2d_70/Conv2D/ReadVariableOp?.sequential_46/dense_122/BiasAdd/ReadVariableOp?-sequential_46/dense_122/MatMul/ReadVariableOp?.sequential_46/dense_123/BiasAdd/ReadVariableOp?-sequential_46/dense_123/MatMul/ReadVariableOp?.sequential_46/dense_124/BiasAdd/ReadVariableOp?-sequential_46/dense_124/MatMul/ReadVariableOp?.sequential_46/dense_125/BiasAdd/ReadVariableOp?-sequential_46/dense_125/MatMul/ReadVariableOp?
-sequential_46/conv2d_69/Conv2D/ReadVariableOpReadVariableOp6sequential_46_conv2d_69_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02/
-sequential_46/conv2d_69/Conv2D/ReadVariableOp?
sequential_46/conv2d_69/Conv2DConv2Dconv2d_69_input5sequential_46/conv2d_69/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2 
sequential_46/conv2d_69/Conv2D?
.sequential_46/conv2d_69/BiasAdd/ReadVariableOpReadVariableOp7sequential_46_conv2d_69_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_46/conv2d_69/BiasAdd/ReadVariableOp?
sequential_46/conv2d_69/BiasAddBiasAdd'sequential_46/conv2d_69/Conv2D:output:06sequential_46/conv2d_69/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2!
sequential_46/conv2d_69/BiasAdd?
sequential_46/conv2d_69/ReluRelu(sequential_46/conv2d_69/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
sequential_46/conv2d_69/Relu?
&sequential_46/max_pooling2d_69/MaxPoolMaxPool*sequential_46/conv2d_69/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&sequential_46/max_pooling2d_69/MaxPool?
-sequential_46/conv2d_70/Conv2D/ReadVariableOpReadVariableOp6sequential_46_conv2d_70_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02/
-sequential_46/conv2d_70/Conv2D/ReadVariableOp?
sequential_46/conv2d_70/Conv2DConv2D/sequential_46/max_pooling2d_69/MaxPool:output:05sequential_46/conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2 
sequential_46/conv2d_70/Conv2D?
.sequential_46/conv2d_70/BiasAdd/ReadVariableOpReadVariableOp7sequential_46_conv2d_70_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_46/conv2d_70/BiasAdd/ReadVariableOp?
sequential_46/conv2d_70/BiasAddBiasAdd'sequential_46/conv2d_70/Conv2D:output:06sequential_46/conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2!
sequential_46/conv2d_70/BiasAdd?
sequential_46/conv2d_70/ReluRelu(sequential_46/conv2d_70/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
sequential_46/conv2d_70/Relu?
&sequential_46/max_pooling2d_70/MaxPoolMaxPool*sequential_46/conv2d_70/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&sequential_46/max_pooling2d_70/MaxPool?
sequential_46/flatten_46/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2 
sequential_46/flatten_46/Const?
 sequential_46/flatten_46/ReshapeReshape/sequential_46/max_pooling2d_70/MaxPool:output:0'sequential_46/flatten_46/Const:output:0*
T0*(
_output_shapes
:??????????2"
 sequential_46/flatten_46/Reshape?
-sequential_46/dense_122/MatMul/ReadVariableOpReadVariableOp6sequential_46_dense_122_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_46/dense_122/MatMul/ReadVariableOp?
sequential_46/dense_122/MatMulMatMul)sequential_46/flatten_46/Reshape:output:05sequential_46/dense_122/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_46/dense_122/MatMul?
.sequential_46/dense_122/BiasAdd/ReadVariableOpReadVariableOp7sequential_46_dense_122_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_46/dense_122/BiasAdd/ReadVariableOp?
sequential_46/dense_122/BiasAddBiasAdd(sequential_46/dense_122/MatMul:product:06sequential_46/dense_122/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_46/dense_122/BiasAdd?
sequential_46/dense_122/ReluRelu(sequential_46/dense_122/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_46/dense_122/Relu?
-sequential_46/dense_123/MatMul/ReadVariableOpReadVariableOp6sequential_46_dense_123_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_46/dense_123/MatMul/ReadVariableOp?
sequential_46/dense_123/MatMulMatMul*sequential_46/dense_122/Relu:activations:05sequential_46/dense_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_46/dense_123/MatMul?
.sequential_46/dense_123/BiasAdd/ReadVariableOpReadVariableOp7sequential_46_dense_123_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_46/dense_123/BiasAdd/ReadVariableOp?
sequential_46/dense_123/BiasAddBiasAdd(sequential_46/dense_123/MatMul:product:06sequential_46/dense_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_46/dense_123/BiasAdd?
sequential_46/dense_123/ReluRelu(sequential_46/dense_123/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_46/dense_123/Relu?
-sequential_46/dense_124/MatMul/ReadVariableOpReadVariableOp6sequential_46_dense_124_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_46/dense_124/MatMul/ReadVariableOp?
sequential_46/dense_124/MatMulMatMul*sequential_46/dense_123/Relu:activations:05sequential_46/dense_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_46/dense_124/MatMul?
.sequential_46/dense_124/BiasAdd/ReadVariableOpReadVariableOp7sequential_46_dense_124_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_46/dense_124/BiasAdd/ReadVariableOp?
sequential_46/dense_124/BiasAddBiasAdd(sequential_46/dense_124/MatMul:product:06sequential_46/dense_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_46/dense_124/BiasAdd?
sequential_46/dense_124/ReluRelu(sequential_46/dense_124/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_46/dense_124/Relu?
-sequential_46/dense_125/MatMul/ReadVariableOpReadVariableOp6sequential_46_dense_125_matmul_readvariableop_resource*
_output_shapes
:	?!*
dtype02/
-sequential_46/dense_125/MatMul/ReadVariableOp?
sequential_46/dense_125/MatMulMatMul*sequential_46/dense_124/Relu:activations:05sequential_46/dense_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2 
sequential_46/dense_125/MatMul?
.sequential_46/dense_125/BiasAdd/ReadVariableOpReadVariableOp7sequential_46_dense_125_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype020
.sequential_46/dense_125/BiasAdd/ReadVariableOp?
sequential_46/dense_125/BiasAddBiasAdd(sequential_46/dense_125/MatMul:product:06sequential_46/dense_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2!
sequential_46/dense_125/BiasAdd?
IdentityIdentity(sequential_46/dense_125/BiasAdd:output:0/^sequential_46/conv2d_69/BiasAdd/ReadVariableOp.^sequential_46/conv2d_69/Conv2D/ReadVariableOp/^sequential_46/conv2d_70/BiasAdd/ReadVariableOp.^sequential_46/conv2d_70/Conv2D/ReadVariableOp/^sequential_46/dense_122/BiasAdd/ReadVariableOp.^sequential_46/dense_122/MatMul/ReadVariableOp/^sequential_46/dense_123/BiasAdd/ReadVariableOp.^sequential_46/dense_123/MatMul/ReadVariableOp/^sequential_46/dense_124/BiasAdd/ReadVariableOp.^sequential_46/dense_124/MatMul/ReadVariableOp/^sequential_46/dense_125/BiasAdd/ReadVariableOp.^sequential_46/dense_125/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 2`
.sequential_46/conv2d_69/BiasAdd/ReadVariableOp.sequential_46/conv2d_69/BiasAdd/ReadVariableOp2^
-sequential_46/conv2d_69/Conv2D/ReadVariableOp-sequential_46/conv2d_69/Conv2D/ReadVariableOp2`
.sequential_46/conv2d_70/BiasAdd/ReadVariableOp.sequential_46/conv2d_70/BiasAdd/ReadVariableOp2^
-sequential_46/conv2d_70/Conv2D/ReadVariableOp-sequential_46/conv2d_70/Conv2D/ReadVariableOp2`
.sequential_46/dense_122/BiasAdd/ReadVariableOp.sequential_46/dense_122/BiasAdd/ReadVariableOp2^
-sequential_46/dense_122/MatMul/ReadVariableOp-sequential_46/dense_122/MatMul/ReadVariableOp2`
.sequential_46/dense_123/BiasAdd/ReadVariableOp.sequential_46/dense_123/BiasAdd/ReadVariableOp2^
-sequential_46/dense_123/MatMul/ReadVariableOp-sequential_46/dense_123/MatMul/ReadVariableOp2`
.sequential_46/dense_124/BiasAdd/ReadVariableOp.sequential_46/dense_124/BiasAdd/ReadVariableOp2^
-sequential_46/dense_124/MatMul/ReadVariableOp-sequential_46/dense_124/MatMul/ReadVariableOp2`
.sequential_46/dense_125/BiasAdd/ReadVariableOp.sequential_46/dense_125/BiasAdd/ReadVariableOp2^
-sequential_46/dense_125/MatMul/ReadVariableOp-sequential_46/dense_125/MatMul/ReadVariableOp:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_69_input
?	
?
E__inference_dense_125_layer_call_and_return_conditional_losses_695344

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
?
?
*__inference_dense_122_layer_call_fn_695906

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
E__inference_dense_122_layer_call_and_return_conditional_losses_6952942
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
?,
?
I__inference_sequential_46_layer_call_and_return_conditional_losses_695605
conv2d_69_input*
conv2d_69_695571:@
conv2d_69_695573:@*
conv2d_70_695577:@@
conv2d_70_695579:@$
dense_122_695584:
??
dense_122_695586:	?$
dense_123_695589:
??
dense_123_695591:	?$
dense_124_695594:
??
dense_124_695596:	?#
dense_125_695599:	?!
dense_125_695601:!
identity??!conv2d_69/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?!dense_122/StatefulPartitionedCall?!dense_123/StatefulPartitionedCall?!dense_124/StatefulPartitionedCall?!dense_125/StatefulPartitionedCall?
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCallconv2d_69_inputconv2d_69_695571conv2d_69_695573*
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
E__inference_conv2d_69_layer_call_and_return_conditional_losses_6952502#
!conv2d_69/StatefulPartitionedCall?
 max_pooling2d_69/PartitionedCallPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_6952142"
 max_pooling2d_69/PartitionedCall?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_69/PartitionedCall:output:0conv2d_70_695577conv2d_70_695579*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_6952682#
!conv2d_70/StatefulPartitionedCall?
 max_pooling2d_70/PartitionedCallPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_6952262"
 max_pooling2d_70/PartitionedCall?
flatten_46/PartitionedCallPartitionedCall)max_pooling2d_70/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_46_layer_call_and_return_conditional_losses_6952812
flatten_46/PartitionedCall?
!dense_122/StatefulPartitionedCallStatefulPartitionedCall#flatten_46/PartitionedCall:output:0dense_122_695584dense_122_695586*
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
E__inference_dense_122_layer_call_and_return_conditional_losses_6952942#
!dense_122/StatefulPartitionedCall?
!dense_123/StatefulPartitionedCallStatefulPartitionedCall*dense_122/StatefulPartitionedCall:output:0dense_123_695589dense_123_695591*
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
E__inference_dense_123_layer_call_and_return_conditional_losses_6953112#
!dense_123/StatefulPartitionedCall?
!dense_124/StatefulPartitionedCallStatefulPartitionedCall*dense_123/StatefulPartitionedCall:output:0dense_124_695594dense_124_695596*
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
E__inference_dense_124_layer_call_and_return_conditional_losses_6953282#
!dense_124/StatefulPartitionedCall?
!dense_125/StatefulPartitionedCallStatefulPartitionedCall*dense_124/StatefulPartitionedCall:output:0dense_125_695599dense_125_695601*
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
E__inference_dense_125_layer_call_and_return_conditional_losses_6953442#
!dense_125/StatefulPartitionedCall?
IdentityIdentity*dense_125/StatefulPartitionedCall:output:0"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^dense_122/StatefulPartitionedCall"^dense_123/StatefulPartitionedCall"^dense_124/StatefulPartitionedCall"^dense_125/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!dense_122/StatefulPartitionedCall!dense_122/StatefulPartitionedCall2F
!dense_123/StatefulPartitionedCall!dense_123/StatefulPartitionedCall2F
!dense_124/StatefulPartitionedCall!dense_124/StatefulPartitionedCall2F
!dense_125/StatefulPartitionedCall!dense_125/StatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_69_input
?
b
F__inference_flatten_46_layer_call_and_return_conditional_losses_695281

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?A
?	
I__inference_sequential_46_layer_call_and_return_conditional_losses_695777

inputsB
(conv2d_69_conv2d_readvariableop_resource:@7
)conv2d_69_biasadd_readvariableop_resource:@B
(conv2d_70_conv2d_readvariableop_resource:@@7
)conv2d_70_biasadd_readvariableop_resource:@<
(dense_122_matmul_readvariableop_resource:
??8
)dense_122_biasadd_readvariableop_resource:	?<
(dense_123_matmul_readvariableop_resource:
??8
)dense_123_biasadd_readvariableop_resource:	?<
(dense_124_matmul_readvariableop_resource:
??8
)dense_124_biasadd_readvariableop_resource:	?;
(dense_125_matmul_readvariableop_resource:	?!7
)dense_125_biasadd_readvariableop_resource:!
identity?? conv2d_69/BiasAdd/ReadVariableOp?conv2d_69/Conv2D/ReadVariableOp? conv2d_70/BiasAdd/ReadVariableOp?conv2d_70/Conv2D/ReadVariableOp? dense_122/BiasAdd/ReadVariableOp?dense_122/MatMul/ReadVariableOp? dense_123/BiasAdd/ReadVariableOp?dense_123/MatMul/ReadVariableOp? dense_124/BiasAdd/ReadVariableOp?dense_124/MatMul/ReadVariableOp? dense_125/BiasAdd/ReadVariableOp?dense_125/MatMul/ReadVariableOp?
conv2d_69/Conv2D/ReadVariableOpReadVariableOp(conv2d_69_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_69/Conv2D/ReadVariableOp?
conv2d_69/Conv2DConv2Dinputs'conv2d_69/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_69/Conv2D?
 conv2d_69/BiasAdd/ReadVariableOpReadVariableOp)conv2d_69_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_69/BiasAdd/ReadVariableOp?
conv2d_69/BiasAddBiasAddconv2d_69/Conv2D:output:0(conv2d_69/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_69/BiasAdd~
conv2d_69/ReluReluconv2d_69/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_69/Relu?
max_pooling2d_69/MaxPoolMaxPoolconv2d_69/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_69/MaxPool?
conv2d_70/Conv2D/ReadVariableOpReadVariableOp(conv2d_70_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_70/Conv2D/ReadVariableOp?
conv2d_70/Conv2DConv2D!max_pooling2d_69/MaxPool:output:0'conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_70/Conv2D?
 conv2d_70/BiasAdd/ReadVariableOpReadVariableOp)conv2d_70_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_70/BiasAdd/ReadVariableOp?
conv2d_70/BiasAddBiasAddconv2d_70/Conv2D:output:0(conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_70/BiasAdd~
conv2d_70/ReluReluconv2d_70/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_70/Relu?
max_pooling2d_70/MaxPoolMaxPoolconv2d_70/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_70/MaxPoolu
flatten_46/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_46/Const?
flatten_46/ReshapeReshape!max_pooling2d_70/MaxPool:output:0flatten_46/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_46/Reshape?
dense_122/MatMul/ReadVariableOpReadVariableOp(dense_122_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_122/MatMul/ReadVariableOp?
dense_122/MatMulMatMulflatten_46/Reshape:output:0'dense_122/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_122/MatMul?
 dense_122/BiasAdd/ReadVariableOpReadVariableOp)dense_122_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_122/BiasAdd/ReadVariableOp?
dense_122/BiasAddBiasAdddense_122/MatMul:product:0(dense_122/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_122/BiasAddw
dense_122/ReluReludense_122/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_122/Relu?
dense_123/MatMul/ReadVariableOpReadVariableOp(dense_123_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_123/MatMul/ReadVariableOp?
dense_123/MatMulMatMuldense_122/Relu:activations:0'dense_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_123/MatMul?
 dense_123/BiasAdd/ReadVariableOpReadVariableOp)dense_123_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_123/BiasAdd/ReadVariableOp?
dense_123/BiasAddBiasAdddense_123/MatMul:product:0(dense_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_123/BiasAddw
dense_123/ReluReludense_123/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_123/Relu?
dense_124/MatMul/ReadVariableOpReadVariableOp(dense_124_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_124/MatMul/ReadVariableOp?
dense_124/MatMulMatMuldense_123/Relu:activations:0'dense_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_124/MatMul?
 dense_124/BiasAdd/ReadVariableOpReadVariableOp)dense_124_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_124/BiasAdd/ReadVariableOp?
dense_124/BiasAddBiasAdddense_124/MatMul:product:0(dense_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_124/BiasAddw
dense_124/ReluReludense_124/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_124/Relu?
dense_125/MatMul/ReadVariableOpReadVariableOp(dense_125_matmul_readvariableop_resource*
_output_shapes
:	?!*
dtype02!
dense_125/MatMul/ReadVariableOp?
dense_125/MatMulMatMuldense_124/Relu:activations:0'dense_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2
dense_125/MatMul?
 dense_125/BiasAdd/ReadVariableOpReadVariableOp)dense_125_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype02"
 dense_125/BiasAdd/ReadVariableOp?
dense_125/BiasAddBiasAdddense_125/MatMul:product:0(dense_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2
dense_125/BiasAdd?
IdentityIdentitydense_125/BiasAdd:output:0!^conv2d_69/BiasAdd/ReadVariableOp ^conv2d_69/Conv2D/ReadVariableOp!^conv2d_70/BiasAdd/ReadVariableOp ^conv2d_70/Conv2D/ReadVariableOp!^dense_122/BiasAdd/ReadVariableOp ^dense_122/MatMul/ReadVariableOp!^dense_123/BiasAdd/ReadVariableOp ^dense_123/MatMul/ReadVariableOp!^dense_124/BiasAdd/ReadVariableOp ^dense_124/MatMul/ReadVariableOp!^dense_125/BiasAdd/ReadVariableOp ^dense_125/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 2D
 conv2d_69/BiasAdd/ReadVariableOp conv2d_69/BiasAdd/ReadVariableOp2B
conv2d_69/Conv2D/ReadVariableOpconv2d_69/Conv2D/ReadVariableOp2D
 conv2d_70/BiasAdd/ReadVariableOp conv2d_70/BiasAdd/ReadVariableOp2B
conv2d_70/Conv2D/ReadVariableOpconv2d_70/Conv2D/ReadVariableOp2D
 dense_122/BiasAdd/ReadVariableOp dense_122/BiasAdd/ReadVariableOp2B
dense_122/MatMul/ReadVariableOpdense_122/MatMul/ReadVariableOp2D
 dense_123/BiasAdd/ReadVariableOp dense_123/BiasAdd/ReadVariableOp2B
dense_123/MatMul/ReadVariableOpdense_123/MatMul/ReadVariableOp2D
 dense_124/BiasAdd/ReadVariableOp dense_124/BiasAdd/ReadVariableOp2B
dense_124/MatMul/ReadVariableOpdense_124/MatMul/ReadVariableOp2D
 dense_125/BiasAdd/ReadVariableOp dense_125/BiasAdd/ReadVariableOp2B
dense_125/MatMul/ReadVariableOpdense_125/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_696268
file_prefix;
!assignvariableop_conv2d_69_kernel:@/
!assignvariableop_1_conv2d_69_bias:@=
#assignvariableop_2_conv2d_70_kernel:@@/
!assignvariableop_3_conv2d_70_bias:@7
#assignvariableop_4_dense_122_kernel:
??0
!assignvariableop_5_dense_122_bias:	?7
#assignvariableop_6_dense_123_kernel:
??0
!assignvariableop_7_dense_123_bias:	?7
#assignvariableop_8_dense_124_kernel:
??0
!assignvariableop_9_dense_124_bias:	?7
$assignvariableop_10_dense_125_kernel:	?!0
"assignvariableop_11_dense_125_bias:!'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: E
+assignvariableop_21_adam_conv2d_69_kernel_m:@7
)assignvariableop_22_adam_conv2d_69_bias_m:@E
+assignvariableop_23_adam_conv2d_70_kernel_m:@@7
)assignvariableop_24_adam_conv2d_70_bias_m:@?
+assignvariableop_25_adam_dense_122_kernel_m:
??8
)assignvariableop_26_adam_dense_122_bias_m:	??
+assignvariableop_27_adam_dense_123_kernel_m:
??8
)assignvariableop_28_adam_dense_123_bias_m:	??
+assignvariableop_29_adam_dense_124_kernel_m:
??8
)assignvariableop_30_adam_dense_124_bias_m:	?>
+assignvariableop_31_adam_dense_125_kernel_m:	?!7
)assignvariableop_32_adam_dense_125_bias_m:!E
+assignvariableop_33_adam_conv2d_69_kernel_v:@7
)assignvariableop_34_adam_conv2d_69_bias_v:@E
+assignvariableop_35_adam_conv2d_70_kernel_v:@@7
)assignvariableop_36_adam_conv2d_70_bias_v:@?
+assignvariableop_37_adam_dense_122_kernel_v:
??8
)assignvariableop_38_adam_dense_122_bias_v:	??
+assignvariableop_39_adam_dense_123_kernel_v:
??8
)assignvariableop_40_adam_dense_123_bias_v:	??
+assignvariableop_41_adam_dense_124_kernel_v:
??8
)assignvariableop_42_adam_dense_124_bias_v:	?>
+assignvariableop_43_adam_dense_125_kernel_v:	?!7
)assignvariableop_44_adam_dense_125_bias_v:!
identity_46??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*?
value?B?.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_69_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_69_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_70_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_70_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_122_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_122_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_123_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_123_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_124_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_124_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_125_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_125_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_conv2d_69_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_conv2d_69_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_conv2d_70_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_conv2d_70_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_dense_122_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_122_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_123_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_123_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_124_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_124_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_dense_125_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_125_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_69_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_69_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv2d_70_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv2d_70_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_dense_122_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_122_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_dense_123_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_123_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_dense_124_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_dense_124_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_dense_125_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_dense_125_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_449
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_45?
Identity_46IdentityIdentity_45:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_46"#
identity_46Identity_46:output:0*o
_input_shapes^
\: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442(
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
?,
?
I__inference_sequential_46_layer_call_and_return_conditional_losses_695351

inputs*
conv2d_69_695251:@
conv2d_69_695253:@*
conv2d_70_695269:@@
conv2d_70_695271:@$
dense_122_695295:
??
dense_122_695297:	?$
dense_123_695312:
??
dense_123_695314:	?$
dense_124_695329:
??
dense_124_695331:	?#
dense_125_695345:	?!
dense_125_695347:!
identity??!conv2d_69/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?!dense_122/StatefulPartitionedCall?!dense_123/StatefulPartitionedCall?!dense_124/StatefulPartitionedCall?!dense_125/StatefulPartitionedCall?
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_69_695251conv2d_69_695253*
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
E__inference_conv2d_69_layer_call_and_return_conditional_losses_6952502#
!conv2d_69/StatefulPartitionedCall?
 max_pooling2d_69/PartitionedCallPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_6952142"
 max_pooling2d_69/PartitionedCall?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_69/PartitionedCall:output:0conv2d_70_695269conv2d_70_695271*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_6952682#
!conv2d_70/StatefulPartitionedCall?
 max_pooling2d_70/PartitionedCallPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_6952262"
 max_pooling2d_70/PartitionedCall?
flatten_46/PartitionedCallPartitionedCall)max_pooling2d_70/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_46_layer_call_and_return_conditional_losses_6952812
flatten_46/PartitionedCall?
!dense_122/StatefulPartitionedCallStatefulPartitionedCall#flatten_46/PartitionedCall:output:0dense_122_695295dense_122_695297*
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
E__inference_dense_122_layer_call_and_return_conditional_losses_6952942#
!dense_122/StatefulPartitionedCall?
!dense_123/StatefulPartitionedCallStatefulPartitionedCall*dense_122/StatefulPartitionedCall:output:0dense_123_695312dense_123_695314*
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
E__inference_dense_123_layer_call_and_return_conditional_losses_6953112#
!dense_123/StatefulPartitionedCall?
!dense_124/StatefulPartitionedCallStatefulPartitionedCall*dense_123/StatefulPartitionedCall:output:0dense_124_695329dense_124_695331*
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
E__inference_dense_124_layer_call_and_return_conditional_losses_6953282#
!dense_124/StatefulPartitionedCall?
!dense_125/StatefulPartitionedCallStatefulPartitionedCall*dense_124/StatefulPartitionedCall:output:0dense_125_695345dense_125_695347*
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
E__inference_dense_125_layer_call_and_return_conditional_losses_6953442#
!dense_125/StatefulPartitionedCall?
IdentityIdentity*dense_125/StatefulPartitionedCall:output:0"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^dense_122/StatefulPartitionedCall"^dense_123/StatefulPartitionedCall"^dense_124/StatefulPartitionedCall"^dense_125/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!dense_122/StatefulPartitionedCall!dense_122/StatefulPartitionedCall2F
!dense_123/StatefulPartitionedCall!dense_123/StatefulPartitionedCall2F
!dense_124/StatefulPartitionedCall!dense_124/StatefulPartitionedCall2F
!dense_125/StatefulPartitionedCall!dense_125/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_70_layer_call_fn_695875

inputs!
unknown:@@
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
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_6952682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
E__inference_dense_122_layer_call_and_return_conditional_losses_695897

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
E__inference_dense_123_layer_call_and_return_conditional_losses_695917

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
?]
?
__inference__traced_save_696123
file_prefix/
+savev2_conv2d_69_kernel_read_readvariableop-
)savev2_conv2d_69_bias_read_readvariableop/
+savev2_conv2d_70_kernel_read_readvariableop-
)savev2_conv2d_70_bias_read_readvariableop/
+savev2_dense_122_kernel_read_readvariableop-
)savev2_dense_122_bias_read_readvariableop/
+savev2_dense_123_kernel_read_readvariableop-
)savev2_dense_123_bias_read_readvariableop/
+savev2_dense_124_kernel_read_readvariableop-
)savev2_dense_124_bias_read_readvariableop/
+savev2_dense_125_kernel_read_readvariableop-
)savev2_dense_125_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_69_kernel_m_read_readvariableop4
0savev2_adam_conv2d_69_bias_m_read_readvariableop6
2savev2_adam_conv2d_70_kernel_m_read_readvariableop4
0savev2_adam_conv2d_70_bias_m_read_readvariableop6
2savev2_adam_dense_122_kernel_m_read_readvariableop4
0savev2_adam_dense_122_bias_m_read_readvariableop6
2savev2_adam_dense_123_kernel_m_read_readvariableop4
0savev2_adam_dense_123_bias_m_read_readvariableop6
2savev2_adam_dense_124_kernel_m_read_readvariableop4
0savev2_adam_dense_124_bias_m_read_readvariableop6
2savev2_adam_dense_125_kernel_m_read_readvariableop4
0savev2_adam_dense_125_bias_m_read_readvariableop6
2savev2_adam_conv2d_69_kernel_v_read_readvariableop4
0savev2_adam_conv2d_69_bias_v_read_readvariableop6
2savev2_adam_conv2d_70_kernel_v_read_readvariableop4
0savev2_adam_conv2d_70_bias_v_read_readvariableop6
2savev2_adam_dense_122_kernel_v_read_readvariableop4
0savev2_adam_dense_122_bias_v_read_readvariableop6
2savev2_adam_dense_123_kernel_v_read_readvariableop4
0savev2_adam_dense_123_bias_v_read_readvariableop6
2savev2_adam_dense_124_kernel_v_read_readvariableop4
0savev2_adam_dense_124_bias_v_read_readvariableop6
2savev2_adam_dense_125_kernel_v_read_readvariableop4
0savev2_adam_dense_125_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*?
value?B?.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_69_kernel_read_readvariableop)savev2_conv2d_69_bias_read_readvariableop+savev2_conv2d_70_kernel_read_readvariableop)savev2_conv2d_70_bias_read_readvariableop+savev2_dense_122_kernel_read_readvariableop)savev2_dense_122_bias_read_readvariableop+savev2_dense_123_kernel_read_readvariableop)savev2_dense_123_bias_read_readvariableop+savev2_dense_124_kernel_read_readvariableop)savev2_dense_124_bias_read_readvariableop+savev2_dense_125_kernel_read_readvariableop)savev2_dense_125_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_69_kernel_m_read_readvariableop0savev2_adam_conv2d_69_bias_m_read_readvariableop2savev2_adam_conv2d_70_kernel_m_read_readvariableop0savev2_adam_conv2d_70_bias_m_read_readvariableop2savev2_adam_dense_122_kernel_m_read_readvariableop0savev2_adam_dense_122_bias_m_read_readvariableop2savev2_adam_dense_123_kernel_m_read_readvariableop0savev2_adam_dense_123_bias_m_read_readvariableop2savev2_adam_dense_124_kernel_m_read_readvariableop0savev2_adam_dense_124_bias_m_read_readvariableop2savev2_adam_dense_125_kernel_m_read_readvariableop0savev2_adam_dense_125_bias_m_read_readvariableop2savev2_adam_conv2d_69_kernel_v_read_readvariableop0savev2_adam_conv2d_69_bias_v_read_readvariableop2savev2_adam_conv2d_70_kernel_v_read_readvariableop0savev2_adam_conv2d_70_bias_v_read_readvariableop2savev2_adam_dense_122_kernel_v_read_readvariableop0savev2_adam_dense_122_bias_v_read_readvariableop2savev2_adam_dense_123_kernel_v_read_readvariableop0savev2_adam_dense_123_bias_v_read_readvariableop2savev2_adam_dense_124_kernel_v_read_readvariableop0savev2_adam_dense_124_bias_v_read_readvariableop2savev2_adam_dense_125_kernel_v_read_readvariableop0savev2_adam_dense_125_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :@:@:@@:@:
??:?:
??:?:
??:?:	?!:!: : : : : : : : : :@:@:@@:@:
??:?:
??:?:
??:?:	?!:!:@:@:@@:@:
??:?:
??:?:
??:?:	?!:!: 2(
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
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:&"
 
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
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?:%!

_output_shapes
:	?!: 

_output_shapes
:!:
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
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:% !

_output_shapes
:	?!: !

_output_shapes
:!:,"(
&
_output_shapes
:@: #

_output_shapes
:@:,$(
&
_output_shapes
:@@: %

_output_shapes
:@:&&"
 
_output_shapes
:
??:!'

_output_shapes	
:?:&("
 
_output_shapes
:
??:!)

_output_shapes	
:?:&*"
 
_output_shapes
:
??:!+

_output_shapes	
:?:%,!

_output_shapes
:	?!: -

_output_shapes
:!:.

_output_shapes
: 
?,
?
I__inference_sequential_46_layer_call_and_return_conditional_losses_695642
conv2d_69_input*
conv2d_69_695608:@
conv2d_69_695610:@*
conv2d_70_695614:@@
conv2d_70_695616:@$
dense_122_695621:
??
dense_122_695623:	?$
dense_123_695626:
??
dense_123_695628:	?$
dense_124_695631:
??
dense_124_695633:	?#
dense_125_695636:	?!
dense_125_695638:!
identity??!conv2d_69/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?!dense_122/StatefulPartitionedCall?!dense_123/StatefulPartitionedCall?!dense_124/StatefulPartitionedCall?!dense_125/StatefulPartitionedCall?
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCallconv2d_69_inputconv2d_69_695608conv2d_69_695610*
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
E__inference_conv2d_69_layer_call_and_return_conditional_losses_6952502#
!conv2d_69/StatefulPartitionedCall?
 max_pooling2d_69/PartitionedCallPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_6952142"
 max_pooling2d_69/PartitionedCall?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_69/PartitionedCall:output:0conv2d_70_695614conv2d_70_695616*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_6952682#
!conv2d_70/StatefulPartitionedCall?
 max_pooling2d_70/PartitionedCallPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_6952262"
 max_pooling2d_70/PartitionedCall?
flatten_46/PartitionedCallPartitionedCall)max_pooling2d_70/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_46_layer_call_and_return_conditional_losses_6952812
flatten_46/PartitionedCall?
!dense_122/StatefulPartitionedCallStatefulPartitionedCall#flatten_46/PartitionedCall:output:0dense_122_695621dense_122_695623*
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
E__inference_dense_122_layer_call_and_return_conditional_losses_6952942#
!dense_122/StatefulPartitionedCall?
!dense_123/StatefulPartitionedCallStatefulPartitionedCall*dense_122/StatefulPartitionedCall:output:0dense_123_695626dense_123_695628*
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
E__inference_dense_123_layer_call_and_return_conditional_losses_6953112#
!dense_123/StatefulPartitionedCall?
!dense_124/StatefulPartitionedCallStatefulPartitionedCall*dense_123/StatefulPartitionedCall:output:0dense_124_695631dense_124_695633*
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
E__inference_dense_124_layer_call_and_return_conditional_losses_6953282#
!dense_124/StatefulPartitionedCall?
!dense_125/StatefulPartitionedCallStatefulPartitionedCall*dense_124/StatefulPartitionedCall:output:0dense_125_695636dense_125_695638*
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
E__inference_dense_125_layer_call_and_return_conditional_losses_6953442#
!dense_125/StatefulPartitionedCall?
IdentityIdentity*dense_125/StatefulPartitionedCall:output:0"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^dense_122/StatefulPartitionedCall"^dense_123/StatefulPartitionedCall"^dense_124/StatefulPartitionedCall"^dense_125/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!dense_122/StatefulPartitionedCall!dense_122/StatefulPartitionedCall2F
!dense_123/StatefulPartitionedCall!dense_123/StatefulPartitionedCall2F
!dense_124/StatefulPartitionedCall!dense_124/StatefulPartitionedCall2F
!dense_125/StatefulPartitionedCall!dense_125/StatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_69_input
?
?
E__inference_conv2d_70_layer_call_and_return_conditional_losses_695866

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
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
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
E__inference_dense_124_layer_call_and_return_conditional_losses_695328

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
E__inference_dense_124_layer_call_and_return_conditional_losses_695937

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
?
b
F__inference_flatten_46_layer_call_and_return_conditional_losses_695881

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
E__inference_dense_125_layer_call_and_return_conditional_losses_695956

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
?
?
E__inference_conv2d_69_layer_call_and_return_conditional_losses_695846

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
?
h
L__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_695214

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
?
h
L__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_695226

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
?
G
+__inference_flatten_46_layer_call_fn_695886

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
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_46_layer_call_and_return_conditional_losses_6952812
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
.__inference_sequential_46_layer_call_fn_695835

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?!

unknown_10:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_46_layer_call_and_return_conditional_losses_6955122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
$__inference_signature_wrapper_695679
conv2d_69_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?!

unknown_10:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_69_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_6952082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_69_input
?
?
E__inference_conv2d_70_layer_call_and_return_conditional_losses_695268

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
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
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
E__inference_dense_123_layer_call_and_return_conditional_losses_695311

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
?A
?	
I__inference_sequential_46_layer_call_and_return_conditional_losses_695728

inputsB
(conv2d_69_conv2d_readvariableop_resource:@7
)conv2d_69_biasadd_readvariableop_resource:@B
(conv2d_70_conv2d_readvariableop_resource:@@7
)conv2d_70_biasadd_readvariableop_resource:@<
(dense_122_matmul_readvariableop_resource:
??8
)dense_122_biasadd_readvariableop_resource:	?<
(dense_123_matmul_readvariableop_resource:
??8
)dense_123_biasadd_readvariableop_resource:	?<
(dense_124_matmul_readvariableop_resource:
??8
)dense_124_biasadd_readvariableop_resource:	?;
(dense_125_matmul_readvariableop_resource:	?!7
)dense_125_biasadd_readvariableop_resource:!
identity?? conv2d_69/BiasAdd/ReadVariableOp?conv2d_69/Conv2D/ReadVariableOp? conv2d_70/BiasAdd/ReadVariableOp?conv2d_70/Conv2D/ReadVariableOp? dense_122/BiasAdd/ReadVariableOp?dense_122/MatMul/ReadVariableOp? dense_123/BiasAdd/ReadVariableOp?dense_123/MatMul/ReadVariableOp? dense_124/BiasAdd/ReadVariableOp?dense_124/MatMul/ReadVariableOp? dense_125/BiasAdd/ReadVariableOp?dense_125/MatMul/ReadVariableOp?
conv2d_69/Conv2D/ReadVariableOpReadVariableOp(conv2d_69_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_69/Conv2D/ReadVariableOp?
conv2d_69/Conv2DConv2Dinputs'conv2d_69/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_69/Conv2D?
 conv2d_69/BiasAdd/ReadVariableOpReadVariableOp)conv2d_69_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_69/BiasAdd/ReadVariableOp?
conv2d_69/BiasAddBiasAddconv2d_69/Conv2D:output:0(conv2d_69/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_69/BiasAdd~
conv2d_69/ReluReluconv2d_69/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_69/Relu?
max_pooling2d_69/MaxPoolMaxPoolconv2d_69/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_69/MaxPool?
conv2d_70/Conv2D/ReadVariableOpReadVariableOp(conv2d_70_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_70/Conv2D/ReadVariableOp?
conv2d_70/Conv2DConv2D!max_pooling2d_69/MaxPool:output:0'conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_70/Conv2D?
 conv2d_70/BiasAdd/ReadVariableOpReadVariableOp)conv2d_70_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_70/BiasAdd/ReadVariableOp?
conv2d_70/BiasAddBiasAddconv2d_70/Conv2D:output:0(conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_70/BiasAdd~
conv2d_70/ReluReluconv2d_70/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_70/Relu?
max_pooling2d_70/MaxPoolMaxPoolconv2d_70/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_70/MaxPoolu
flatten_46/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_46/Const?
flatten_46/ReshapeReshape!max_pooling2d_70/MaxPool:output:0flatten_46/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_46/Reshape?
dense_122/MatMul/ReadVariableOpReadVariableOp(dense_122_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_122/MatMul/ReadVariableOp?
dense_122/MatMulMatMulflatten_46/Reshape:output:0'dense_122/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_122/MatMul?
 dense_122/BiasAdd/ReadVariableOpReadVariableOp)dense_122_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_122/BiasAdd/ReadVariableOp?
dense_122/BiasAddBiasAdddense_122/MatMul:product:0(dense_122/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_122/BiasAddw
dense_122/ReluReludense_122/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_122/Relu?
dense_123/MatMul/ReadVariableOpReadVariableOp(dense_123_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_123/MatMul/ReadVariableOp?
dense_123/MatMulMatMuldense_122/Relu:activations:0'dense_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_123/MatMul?
 dense_123/BiasAdd/ReadVariableOpReadVariableOp)dense_123_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_123/BiasAdd/ReadVariableOp?
dense_123/BiasAddBiasAdddense_123/MatMul:product:0(dense_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_123/BiasAddw
dense_123/ReluReludense_123/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_123/Relu?
dense_124/MatMul/ReadVariableOpReadVariableOp(dense_124_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_124/MatMul/ReadVariableOp?
dense_124/MatMulMatMuldense_123/Relu:activations:0'dense_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_124/MatMul?
 dense_124/BiasAdd/ReadVariableOpReadVariableOp)dense_124_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_124/BiasAdd/ReadVariableOp?
dense_124/BiasAddBiasAdddense_124/MatMul:product:0(dense_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_124/BiasAddw
dense_124/ReluReludense_124/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_124/Relu?
dense_125/MatMul/ReadVariableOpReadVariableOp(dense_125_matmul_readvariableop_resource*
_output_shapes
:	?!*
dtype02!
dense_125/MatMul/ReadVariableOp?
dense_125/MatMulMatMuldense_124/Relu:activations:0'dense_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2
dense_125/MatMul?
 dense_125/BiasAdd/ReadVariableOpReadVariableOp)dense_125_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype02"
 dense_125/BiasAdd/ReadVariableOp?
dense_125/BiasAddBiasAdddense_125/MatMul:product:0(dense_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!2
dense_125/BiasAdd?
IdentityIdentitydense_125/BiasAdd:output:0!^conv2d_69/BiasAdd/ReadVariableOp ^conv2d_69/Conv2D/ReadVariableOp!^conv2d_70/BiasAdd/ReadVariableOp ^conv2d_70/Conv2D/ReadVariableOp!^dense_122/BiasAdd/ReadVariableOp ^dense_122/MatMul/ReadVariableOp!^dense_123/BiasAdd/ReadVariableOp ^dense_123/MatMul/ReadVariableOp!^dense_124/BiasAdd/ReadVariableOp ^dense_124/MatMul/ReadVariableOp!^dense_125/BiasAdd/ReadVariableOp ^dense_125/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 2D
 conv2d_69/BiasAdd/ReadVariableOp conv2d_69/BiasAdd/ReadVariableOp2B
conv2d_69/Conv2D/ReadVariableOpconv2d_69/Conv2D/ReadVariableOp2D
 conv2d_70/BiasAdd/ReadVariableOp conv2d_70/BiasAdd/ReadVariableOp2B
conv2d_70/Conv2D/ReadVariableOpconv2d_70/Conv2D/ReadVariableOp2D
 dense_122/BiasAdd/ReadVariableOp dense_122/BiasAdd/ReadVariableOp2B
dense_122/MatMul/ReadVariableOpdense_122/MatMul/ReadVariableOp2D
 dense_123/BiasAdd/ReadVariableOp dense_123/BiasAdd/ReadVariableOp2B
dense_123/MatMul/ReadVariableOpdense_123/MatMul/ReadVariableOp2D
 dense_124/BiasAdd/ReadVariableOp dense_124/BiasAdd/ReadVariableOp2B
dense_124/MatMul/ReadVariableOpdense_124/MatMul/ReadVariableOp2D
 dense_125/BiasAdd/ReadVariableOp dense_125/BiasAdd/ReadVariableOp2B
dense_125/MatMul/ReadVariableOpdense_125/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_69_layer_call_and_return_conditional_losses_695250

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
?
M
1__inference_max_pooling2d_70_layer_call_fn_695232

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
L__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_6952262
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
?
?
.__inference_sequential_46_layer_call_fn_695568
conv2d_69_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?!

unknown_10:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_69_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_46_layer_call_and_return_conditional_losses_6955122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_69_input
?

?
.__inference_sequential_46_layer_call_fn_695806

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?!

unknown_10:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_46_layer_call_and_return_conditional_losses_6953512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_125_layer_call_fn_695965

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
E__inference_dense_125_layer_call_and_return_conditional_losses_6953442
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
?
?
*__inference_dense_124_layer_call_fn_695946

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
E__inference_dense_124_layer_call_and_return_conditional_losses_6953282
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
?,
?
I__inference_sequential_46_layer_call_and_return_conditional_losses_695512

inputs*
conv2d_69_695478:@
conv2d_69_695480:@*
conv2d_70_695484:@@
conv2d_70_695486:@$
dense_122_695491:
??
dense_122_695493:	?$
dense_123_695496:
??
dense_123_695498:	?$
dense_124_695501:
??
dense_124_695503:	?#
dense_125_695506:	?!
dense_125_695508:!
identity??!conv2d_69/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?!dense_122/StatefulPartitionedCall?!dense_123/StatefulPartitionedCall?!dense_124/StatefulPartitionedCall?!dense_125/StatefulPartitionedCall?
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_69_695478conv2d_69_695480*
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
E__inference_conv2d_69_layer_call_and_return_conditional_losses_6952502#
!conv2d_69/StatefulPartitionedCall?
 max_pooling2d_69/PartitionedCallPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_6952142"
 max_pooling2d_69/PartitionedCall?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_69/PartitionedCall:output:0conv2d_70_695484conv2d_70_695486*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_6952682#
!conv2d_70/StatefulPartitionedCall?
 max_pooling2d_70/PartitionedCallPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_6952262"
 max_pooling2d_70/PartitionedCall?
flatten_46/PartitionedCallPartitionedCall)max_pooling2d_70/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_46_layer_call_and_return_conditional_losses_6952812
flatten_46/PartitionedCall?
!dense_122/StatefulPartitionedCallStatefulPartitionedCall#flatten_46/PartitionedCall:output:0dense_122_695491dense_122_695493*
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
E__inference_dense_122_layer_call_and_return_conditional_losses_6952942#
!dense_122/StatefulPartitionedCall?
!dense_123/StatefulPartitionedCallStatefulPartitionedCall*dense_122/StatefulPartitionedCall:output:0dense_123_695496dense_123_695498*
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
E__inference_dense_123_layer_call_and_return_conditional_losses_6953112#
!dense_123/StatefulPartitionedCall?
!dense_124/StatefulPartitionedCallStatefulPartitionedCall*dense_123/StatefulPartitionedCall:output:0dense_124_695501dense_124_695503*
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
E__inference_dense_124_layer_call_and_return_conditional_losses_6953282#
!dense_124/StatefulPartitionedCall?
!dense_125/StatefulPartitionedCallStatefulPartitionedCall*dense_124/StatefulPartitionedCall:output:0dense_125_695506dense_125_695508*
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
E__inference_dense_125_layer_call_and_return_conditional_losses_6953442#
!dense_125/StatefulPartitionedCall?
IdentityIdentity*dense_125/StatefulPartitionedCall:output:0"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^dense_122/StatefulPartitionedCall"^dense_123/StatefulPartitionedCall"^dense_124/StatefulPartitionedCall"^dense_125/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!dense_122/StatefulPartitionedCall!dense_122/StatefulPartitionedCall2F
!dense_123/StatefulPartitionedCall!dense_123/StatefulPartitionedCall2F
!dense_124/StatefulPartitionedCall!dense_124/StatefulPartitionedCall2F
!dense_125/StatefulPartitionedCall!dense_125/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
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
conv2d_69_input@
!serving_default_conv2d_69_input:0?????????=
	dense_1250
StatefulPartitionedCall:0?????????!tensorflow/serving/predict:ζ
?R
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"?N
_tf_keras_sequential?N{"name": "sequential_46", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_46", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_69_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_69", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_69", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_70", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_70", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_46", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_122", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_123", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_124", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_125", "trainable": true, "dtype": "float32", "units": 33, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 16, 16, 3]}, "float32", "conv2d_69_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_46", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_69_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_69", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_69", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "conv2d_70", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_70", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8}, {"class_name": "Flatten", "config": {"name": "flatten_46", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 9}, {"class_name": "Dense", "config": {"name": "dense_122", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, {"class_name": "Dense", "config": {"name": "dense_123", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15}, {"class_name": "Dense", "config": {"name": "dense_124", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18}, {"class_name": "Dense", "config": {"name": "dense_125", "trainable": true, "dtype": "float32", "units": 33, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 21}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}, "shared_object_id": 24}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 25}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?

_tf_keras_layer?
{"name": "conv2d_69", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_69", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 3]}}
?
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "max_pooling2d_69", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_69", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 26}}
?


kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_70", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_70", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 27}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 7, 64]}}
?
 regularization_losses
!	variables
"trainable_variables
#	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "max_pooling2d_70", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_70", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 28}}
?
$regularization_losses
%	variables
&trainable_variables
'	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "flatten_46", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_46", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 29}}
?

(kernel
)bias
*regularization_losses
+	variables
,trainable_variables
-	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_122", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_122", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

.kernel
/bias
0regularization_losses
1	variables
2trainable_variables
3	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_123", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_123", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 31}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

4kernel
5bias
6regularization_losses
7	variables
8trainable_variables
9	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_124", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_124", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 32}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

:kernel
;bias
<regularization_losses
=	variables
>trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_125", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_125", "trainable": true, "dtype": "float32", "units": 33, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
@iter

Abeta_1

Bbeta_2
	Cdecay
Dlearning_ratem?m?m?m?(m?)m?.m?/m?4m?5m?:m?;m?v?v?v?v?(v?)v?.v?/v?4v?5v?:v?;v?"
	optimizer
 "
trackable_list_wrapper
v
0
1
2
3
(4
)5
.6
/7
48
59
:10
;11"
trackable_list_wrapper
v
0
1
2
3
(4
)5
.6
/7
48
59
:10
;11"
trackable_list_wrapper
?
Elayer_metrics
regularization_losses
	variables

Flayers
Gmetrics
Hnon_trainable_variables
trainable_variables
Ilayer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
*:(@2conv2d_69/kernel
:@2conv2d_69/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Jlayer_metrics
regularization_losses
	variables

Klayers
Lmetrics
Mnon_trainable_variables
trainable_variables
Nlayer_regularization_losses
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
Olayer_metrics
regularization_losses
	variables

Players
Qmetrics
Rnon_trainable_variables
trainable_variables
Slayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_70/kernel
:@2conv2d_70/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Tlayer_metrics
regularization_losses
	variables

Ulayers
Vmetrics
Wnon_trainable_variables
trainable_variables
Xlayer_regularization_losses
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
Ylayer_metrics
 regularization_losses
!	variables

Zlayers
[metrics
\non_trainable_variables
"trainable_variables
]layer_regularization_losses
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
^layer_metrics
$regularization_losses
%	variables

_layers
`metrics
anon_trainable_variables
&trainable_variables
blayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_122/kernel
:?2dense_122/bias
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
clayer_metrics
*regularization_losses
+	variables

dlayers
emetrics
fnon_trainable_variables
,trainable_variables
glayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_123/kernel
:?2dense_123/bias
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
hlayer_metrics
0regularization_losses
1	variables

ilayers
jmetrics
knon_trainable_variables
2trainable_variables
llayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_124/kernel
:?2dense_124/bias
 "
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
?
mlayer_metrics
6regularization_losses
7	variables

nlayers
ometrics
pnon_trainable_variables
8trainable_variables
qlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	?!2dense_125/kernel
:!2dense_125/bias
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
?
rlayer_metrics
<regularization_losses
=	variables

slayers
tmetrics
unon_trainable_variables
>trainable_variables
vlayer_regularization_losses
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
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
.
w0
x1"
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
	ytotal
	zcount
{	variables
|	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 34}
?
	}total
	~count

_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 25}
:  (2total
:  (2count
.
y0
z1"
trackable_list_wrapper
-
{	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
}0
~1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
/:-@2Adam/conv2d_69/kernel/m
!:@2Adam/conv2d_69/bias/m
/:-@@2Adam/conv2d_70/kernel/m
!:@2Adam/conv2d_70/bias/m
):'
??2Adam/dense_122/kernel/m
": ?2Adam/dense_122/bias/m
):'
??2Adam/dense_123/kernel/m
": ?2Adam/dense_123/bias/m
):'
??2Adam/dense_124/kernel/m
": ?2Adam/dense_124/bias/m
(:&	?!2Adam/dense_125/kernel/m
!:!2Adam/dense_125/bias/m
/:-@2Adam/conv2d_69/kernel/v
!:@2Adam/conv2d_69/bias/v
/:-@@2Adam/conv2d_70/kernel/v
!:@2Adam/conv2d_70/bias/v
):'
??2Adam/dense_122/kernel/v
": ?2Adam/dense_122/bias/v
):'
??2Adam/dense_123/kernel/v
": ?2Adam/dense_123/bias/v
):'
??2Adam/dense_124/kernel/v
": ?2Adam/dense_124/bias/v
(:&	?!2Adam/dense_125/kernel/v
!:!2Adam/dense_125/bias/v
?2?
I__inference_sequential_46_layer_call_and_return_conditional_losses_695728
I__inference_sequential_46_layer_call_and_return_conditional_losses_695777
I__inference_sequential_46_layer_call_and_return_conditional_losses_695605
I__inference_sequential_46_layer_call_and_return_conditional_losses_695642?
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
!__inference__wrapped_model_695208?
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
conv2d_69_input?????????
?2?
.__inference_sequential_46_layer_call_fn_695378
.__inference_sequential_46_layer_call_fn_695806
.__inference_sequential_46_layer_call_fn_695835
.__inference_sequential_46_layer_call_fn_695568?
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
E__inference_conv2d_69_layer_call_and_return_conditional_losses_695846?
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
*__inference_conv2d_69_layer_call_fn_695855?
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
L__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_695214?
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
1__inference_max_pooling2d_69_layer_call_fn_695220?
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
E__inference_conv2d_70_layer_call_and_return_conditional_losses_695866?
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
*__inference_conv2d_70_layer_call_fn_695875?
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
L__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_695226?
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
1__inference_max_pooling2d_70_layer_call_fn_695232?
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
F__inference_flatten_46_layer_call_and_return_conditional_losses_695881?
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
+__inference_flatten_46_layer_call_fn_695886?
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
E__inference_dense_122_layer_call_and_return_conditional_losses_695897?
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
*__inference_dense_122_layer_call_fn_695906?
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
E__inference_dense_123_layer_call_and_return_conditional_losses_695917?
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
*__inference_dense_123_layer_call_fn_695926?
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
E__inference_dense_124_layer_call_and_return_conditional_losses_695937?
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
*__inference_dense_124_layer_call_fn_695946?
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
E__inference_dense_125_layer_call_and_return_conditional_losses_695956?
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
*__inference_dense_125_layer_call_fn_695965?
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
$__inference_signature_wrapper_695679conv2d_69_input"?
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
!__inference__wrapped_model_695208?()./45:;@?=
6?3
1?.
conv2d_69_input?????????
? "5?2
0
	dense_125#? 
	dense_125?????????!?
E__inference_conv2d_69_layer_call_and_return_conditional_losses_695846l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????@
? ?
*__inference_conv2d_69_layer_call_fn_695855_7?4
-?*
(?%
inputs?????????
? " ??????????@?
E__inference_conv2d_70_layer_call_and_return_conditional_losses_695866l7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
*__inference_conv2d_70_layer_call_fn_695875_7?4
-?*
(?%
inputs?????????@
? " ??????????@?
E__inference_dense_122_layer_call_and_return_conditional_losses_695897^()0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_122_layer_call_fn_695906Q()0?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_123_layer_call_and_return_conditional_losses_695917^./0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_123_layer_call_fn_695926Q./0?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_124_layer_call_and_return_conditional_losses_695937^450?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_124_layer_call_fn_695946Q450?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_125_layer_call_and_return_conditional_losses_695956]:;0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????!
? ~
*__inference_dense_125_layer_call_fn_695965P:;0?-
&?#
!?
inputs??????????
? "??????????!?
F__inference_flatten_46_layer_call_and_return_conditional_losses_695881a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????
? ?
+__inference_flatten_46_layer_call_fn_695886T7?4
-?*
(?%
inputs?????????@
? "????????????
L__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_695214?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_69_layer_call_fn_695220?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_695226?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_70_layer_call_fn_695232?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_46_layer_call_and_return_conditional_losses_695605()./45:;H?E
>?;
1?.
conv2d_69_input?????????
p 

 
? "%?"
?
0?????????!
? ?
I__inference_sequential_46_layer_call_and_return_conditional_losses_695642()./45:;H?E
>?;
1?.
conv2d_69_input?????????
p

 
? "%?"
?
0?????????!
? ?
I__inference_sequential_46_layer_call_and_return_conditional_losses_695728v()./45:;??<
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
I__inference_sequential_46_layer_call_and_return_conditional_losses_695777v()./45:;??<
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
.__inference_sequential_46_layer_call_fn_695378r()./45:;H?E
>?;
1?.
conv2d_69_input?????????
p 

 
? "??????????!?
.__inference_sequential_46_layer_call_fn_695568r()./45:;H?E
>?;
1?.
conv2d_69_input?????????
p

 
? "??????????!?
.__inference_sequential_46_layer_call_fn_695806i()./45:;??<
5?2
(?%
inputs?????????
p 

 
? "??????????!?
.__inference_sequential_46_layer_call_fn_695835i()./45:;??<
5?2
(?%
inputs?????????
p

 
? "??????????!?
$__inference_signature_wrapper_695679?()./45:;S?P
? 
I?F
D
conv2d_69_input1?.
conv2d_69_input?????????"5?2
0
	dense_125#? 
	dense_125?????????!