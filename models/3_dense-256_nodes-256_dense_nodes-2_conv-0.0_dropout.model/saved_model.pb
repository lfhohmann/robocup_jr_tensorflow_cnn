Ој
≠Г
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
Ы
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
В
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
delete_old_dirsbool(И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
Њ
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
executor_typestring И
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.5.02v2.5.0-0-ga4dfb8d1a718су
Е
conv2d_87/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*!
shared_nameconv2d_87/kernel
~
$conv2d_87/kernel/Read/ReadVariableOpReadVariableOpconv2d_87/kernel*'
_output_shapes
:А*
dtype0
u
conv2d_87/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_87/bias
n
"conv2d_87/bias/Read/ReadVariableOpReadVariableOpconv2d_87/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_88/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_88/kernel

$conv2d_88/kernel/Read/ReadVariableOpReadVariableOpconv2d_88/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_88/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_88/bias
n
"conv2d_88/bias/Read/ReadVariableOpReadVariableOpconv2d_88/bias*
_output_shapes	
:А*
dtype0
~
dense_170/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*!
shared_namedense_170/kernel
w
$dense_170/kernel/Read/ReadVariableOpReadVariableOpdense_170/kernel* 
_output_shapes
:
АА*
dtype0
u
dense_170/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_170/bias
n
"dense_170/bias/Read/ReadVariableOpReadVariableOpdense_170/bias*
_output_shapes	
:А*
dtype0
~
dense_171/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*!
shared_namedense_171/kernel
w
$dense_171/kernel/Read/ReadVariableOpReadVariableOpdense_171/kernel* 
_output_shapes
:
АА*
dtype0
u
dense_171/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_171/bias
n
"dense_171/bias/Read/ReadVariableOpReadVariableOpdense_171/bias*
_output_shapes	
:А*
dtype0
~
dense_172/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*!
shared_namedense_172/kernel
w
$dense_172/kernel/Read/ReadVariableOpReadVariableOpdense_172/kernel* 
_output_shapes
:
АА*
dtype0
u
dense_172/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_172/bias
n
"dense_172/bias/Read/ReadVariableOpReadVariableOpdense_172/bias*
_output_shapes	
:А*
dtype0
}
dense_173/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А!*!
shared_namedense_173/kernel
v
$dense_173/kernel/Read/ReadVariableOpReadVariableOpdense_173/kernel*
_output_shapes
:	А!*
dtype0
t
dense_173/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*
shared_namedense_173/bias
m
"dense_173/bias/Read/ReadVariableOpReadVariableOpdense_173/bias*
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
У
Adam/conv2d_87/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdam/conv2d_87/kernel/m
М
+Adam/conv2d_87/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_87/kernel/m*'
_output_shapes
:А*
dtype0
Г
Adam/conv2d_87/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_87/bias/m
|
)Adam/conv2d_87/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_87/bias/m*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_88/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_88/kernel/m
Н
+Adam/conv2d_88/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_88/kernel/m*(
_output_shapes
:АА*
dtype0
Г
Adam/conv2d_88/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_88/bias/m
|
)Adam/conv2d_88/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_88/bias/m*
_output_shapes	
:А*
dtype0
М
Adam/dense_170/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*(
shared_nameAdam/dense_170/kernel/m
Е
+Adam/dense_170/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_170/kernel/m* 
_output_shapes
:
АА*
dtype0
Г
Adam/dense_170/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/dense_170/bias/m
|
)Adam/dense_170/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_170/bias/m*
_output_shapes	
:А*
dtype0
М
Adam/dense_171/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*(
shared_nameAdam/dense_171/kernel/m
Е
+Adam/dense_171/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_171/kernel/m* 
_output_shapes
:
АА*
dtype0
Г
Adam/dense_171/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/dense_171/bias/m
|
)Adam/dense_171/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_171/bias/m*
_output_shapes	
:А*
dtype0
М
Adam/dense_172/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*(
shared_nameAdam/dense_172/kernel/m
Е
+Adam/dense_172/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_172/kernel/m* 
_output_shapes
:
АА*
dtype0
Г
Adam/dense_172/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/dense_172/bias/m
|
)Adam/dense_172/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_172/bias/m*
_output_shapes	
:А*
dtype0
Л
Adam/dense_173/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А!*(
shared_nameAdam/dense_173/kernel/m
Д
+Adam/dense_173/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_173/kernel/m*
_output_shapes
:	А!*
dtype0
В
Adam/dense_173/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*&
shared_nameAdam/dense_173/bias/m
{
)Adam/dense_173/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_173/bias/m*
_output_shapes
:!*
dtype0
У
Adam/conv2d_87/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdam/conv2d_87/kernel/v
М
+Adam/conv2d_87/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_87/kernel/v*'
_output_shapes
:А*
dtype0
Г
Adam/conv2d_87/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_87/bias/v
|
)Adam/conv2d_87/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_87/bias/v*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_88/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_88/kernel/v
Н
+Adam/conv2d_88/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_88/kernel/v*(
_output_shapes
:АА*
dtype0
Г
Adam/conv2d_88/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_88/bias/v
|
)Adam/conv2d_88/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_88/bias/v*
_output_shapes	
:А*
dtype0
М
Adam/dense_170/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*(
shared_nameAdam/dense_170/kernel/v
Е
+Adam/dense_170/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_170/kernel/v* 
_output_shapes
:
АА*
dtype0
Г
Adam/dense_170/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/dense_170/bias/v
|
)Adam/dense_170/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_170/bias/v*
_output_shapes	
:А*
dtype0
М
Adam/dense_171/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*(
shared_nameAdam/dense_171/kernel/v
Е
+Adam/dense_171/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_171/kernel/v* 
_output_shapes
:
АА*
dtype0
Г
Adam/dense_171/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/dense_171/bias/v
|
)Adam/dense_171/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_171/bias/v*
_output_shapes	
:А*
dtype0
М
Adam/dense_172/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*(
shared_nameAdam/dense_172/kernel/v
Е
+Adam/dense_172/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_172/kernel/v* 
_output_shapes
:
АА*
dtype0
Г
Adam/dense_172/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/dense_172/bias/v
|
)Adam/dense_172/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_172/bias/v*
_output_shapes	
:А*
dtype0
Л
Adam/dense_173/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А!*(
shared_nameAdam/dense_173/kernel/v
Д
+Adam/dense_173/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_173/kernel/v*
_output_shapes
:	А!*
dtype0
В
Adam/dense_173/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*&
shared_nameAdam/dense_173/bias/v
{
)Adam/dense_173/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_173/bias/v*
_output_shapes
:!*
dtype0

NoOpNoOp
эF
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ЄF
valueЃFBЂF B§F
В
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
∞
@iter

Abeta_1

Bbeta_2
	Cdecay
Dlearning_ratemВmГmДmЕ(mЖ)mЗ.mИ/mЙ4mК5mЛ:mМ;mНvОvПvРvС(vТ)vУ.vФ/vХ4vЦ5vЧ:vШ;vЩ
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
≠
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
VARIABLE_VALUEconv2d_87/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_87/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
≠
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
≠
Olayer_metrics
regularization_losses
	variables

Players
Qmetrics
Rnon_trainable_variables
trainable_variables
Slayer_regularization_losses
\Z
VARIABLE_VALUEconv2d_88/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_88/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
≠
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
≠
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
≠
^layer_metrics
$regularization_losses
%	variables

_layers
`metrics
anon_trainable_variables
&trainable_variables
blayer_regularization_losses
\Z
VARIABLE_VALUEdense_170/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_170/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

(0
)1

(0
)1
≠
clayer_metrics
*regularization_losses
+	variables

dlayers
emetrics
fnon_trainable_variables
,trainable_variables
glayer_regularization_losses
\Z
VARIABLE_VALUEdense_171/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_171/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

.0
/1

.0
/1
≠
hlayer_metrics
0regularization_losses
1	variables

ilayers
jmetrics
knon_trainable_variables
2trainable_variables
llayer_regularization_losses
\Z
VARIABLE_VALUEdense_172/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_172/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

40
51

40
51
≠
mlayer_metrics
6regularization_losses
7	variables

nlayers
ometrics
pnon_trainable_variables
8trainable_variables
qlayer_regularization_losses
\Z
VARIABLE_VALUEdense_173/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_173/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

:0
;1

:0
;1
≠
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
А	variables
Б	keras_api
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
А	variables
}
VARIABLE_VALUEAdam/conv2d_87/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_87/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_88/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_88/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_170/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_170/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_171/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_171/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_172/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_172/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_173/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_173/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_87/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_87/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_88/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_88/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_170/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_170/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_171/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_171/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_172/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_172/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_173/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_173/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Т
serving_default_conv2d_87_inputPlaceholder*/
_output_shapes
:€€€€€€€€€*
dtype0*$
shape:€€€€€€€€€
°
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_87_inputconv2d_87/kernelconv2d_87/biasconv2d_88/kernelconv2d_88/biasdense_170/kerneldense_170/biasdense_171/kerneldense_171/biasdense_172/kerneldense_172/biasdense_173/kerneldense_173/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€!*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_877395
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ј
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_87/kernel/Read/ReadVariableOp"conv2d_87/bias/Read/ReadVariableOp$conv2d_88/kernel/Read/ReadVariableOp"conv2d_88/bias/Read/ReadVariableOp$dense_170/kernel/Read/ReadVariableOp"dense_170/bias/Read/ReadVariableOp$dense_171/kernel/Read/ReadVariableOp"dense_171/bias/Read/ReadVariableOp$dense_172/kernel/Read/ReadVariableOp"dense_172/bias/Read/ReadVariableOp$dense_173/kernel/Read/ReadVariableOp"dense_173/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_87/kernel/m/Read/ReadVariableOp)Adam/conv2d_87/bias/m/Read/ReadVariableOp+Adam/conv2d_88/kernel/m/Read/ReadVariableOp)Adam/conv2d_88/bias/m/Read/ReadVariableOp+Adam/dense_170/kernel/m/Read/ReadVariableOp)Adam/dense_170/bias/m/Read/ReadVariableOp+Adam/dense_171/kernel/m/Read/ReadVariableOp)Adam/dense_171/bias/m/Read/ReadVariableOp+Adam/dense_172/kernel/m/Read/ReadVariableOp)Adam/dense_172/bias/m/Read/ReadVariableOp+Adam/dense_173/kernel/m/Read/ReadVariableOp)Adam/dense_173/bias/m/Read/ReadVariableOp+Adam/conv2d_87/kernel/v/Read/ReadVariableOp)Adam/conv2d_87/bias/v/Read/ReadVariableOp+Adam/conv2d_88/kernel/v/Read/ReadVariableOp)Adam/conv2d_88/bias/v/Read/ReadVariableOp+Adam/dense_170/kernel/v/Read/ReadVariableOp)Adam/dense_170/bias/v/Read/ReadVariableOp+Adam/dense_171/kernel/v/Read/ReadVariableOp)Adam/dense_171/bias/v/Read/ReadVariableOp+Adam/dense_172/kernel/v/Read/ReadVariableOp)Adam/dense_172/bias/v/Read/ReadVariableOp+Adam/dense_173/kernel/v/Read/ReadVariableOp)Adam/dense_173/bias/v/Read/ReadVariableOpConst*:
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
GPU2*0J 8В *(
f#R!
__inference__traced_save_877839
Ј	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_87/kernelconv2d_87/biasconv2d_88/kernelconv2d_88/biasdense_170/kerneldense_170/biasdense_171/kerneldense_171/biasdense_172/kerneldense_172/biasdense_173/kerneldense_173/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_87/kernel/mAdam/conv2d_87/bias/mAdam/conv2d_88/kernel/mAdam/conv2d_88/bias/mAdam/dense_170/kernel/mAdam/dense_170/bias/mAdam/dense_171/kernel/mAdam/dense_171/bias/mAdam/dense_172/kernel/mAdam/dense_172/bias/mAdam/dense_173/kernel/mAdam/dense_173/bias/mAdam/conv2d_87/kernel/vAdam/conv2d_87/bias/vAdam/conv2d_88/kernel/vAdam/conv2d_88/bias/vAdam/dense_170/kernel/vAdam/dense_170/bias/vAdam/dense_171/kernel/vAdam/dense_171/bias/vAdam/dense_172/kernel/vAdam/dense_172/bias/vAdam/dense_173/kernel/vAdam/dense_173/bias/v*9
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
GPU2*0J 8В *+
f&R$
"__inference__traced_restore_877984ді
Ъ^
–
__inference__traced_save_877839
file_prefix/
+savev2_conv2d_87_kernel_read_readvariableop-
)savev2_conv2d_87_bias_read_readvariableop/
+savev2_conv2d_88_kernel_read_readvariableop-
)savev2_conv2d_88_bias_read_readvariableop/
+savev2_dense_170_kernel_read_readvariableop-
)savev2_dense_170_bias_read_readvariableop/
+savev2_dense_171_kernel_read_readvariableop-
)savev2_dense_171_bias_read_readvariableop/
+savev2_dense_172_kernel_read_readvariableop-
)savev2_dense_172_bias_read_readvariableop/
+savev2_dense_173_kernel_read_readvariableop-
)savev2_dense_173_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_87_kernel_m_read_readvariableop4
0savev2_adam_conv2d_87_bias_m_read_readvariableop6
2savev2_adam_conv2d_88_kernel_m_read_readvariableop4
0savev2_adam_conv2d_88_bias_m_read_readvariableop6
2savev2_adam_dense_170_kernel_m_read_readvariableop4
0savev2_adam_dense_170_bias_m_read_readvariableop6
2savev2_adam_dense_171_kernel_m_read_readvariableop4
0savev2_adam_dense_171_bias_m_read_readvariableop6
2savev2_adam_dense_172_kernel_m_read_readvariableop4
0savev2_adam_dense_172_bias_m_read_readvariableop6
2savev2_adam_dense_173_kernel_m_read_readvariableop4
0savev2_adam_dense_173_bias_m_read_readvariableop6
2savev2_adam_conv2d_87_kernel_v_read_readvariableop4
0savev2_adam_conv2d_87_bias_v_read_readvariableop6
2savev2_adam_conv2d_88_kernel_v_read_readvariableop4
0savev2_adam_conv2d_88_bias_v_read_readvariableop6
2savev2_adam_dense_170_kernel_v_read_readvariableop4
0savev2_adam_dense_170_bias_v_read_readvariableop6
2savev2_adam_dense_171_kernel_v_read_readvariableop4
0savev2_adam_dense_171_bias_v_read_readvariableop6
2savev2_adam_dense_172_kernel_v_read_readvariableop4
0savev2_adam_dense_172_bias_v_read_readvariableop6
2savev2_adam_dense_173_kernel_v_read_readvariableop4
0savev2_adam_dense_173_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЇ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*ћ
value¬Bњ.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesд
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЧ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_87_kernel_read_readvariableop)savev2_conv2d_87_bias_read_readvariableop+savev2_conv2d_88_kernel_read_readvariableop)savev2_conv2d_88_bias_read_readvariableop+savev2_dense_170_kernel_read_readvariableop)savev2_dense_170_bias_read_readvariableop+savev2_dense_171_kernel_read_readvariableop)savev2_dense_171_bias_read_readvariableop+savev2_dense_172_kernel_read_readvariableop)savev2_dense_172_bias_read_readvariableop+savev2_dense_173_kernel_read_readvariableop)savev2_dense_173_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_87_kernel_m_read_readvariableop0savev2_adam_conv2d_87_bias_m_read_readvariableop2savev2_adam_conv2d_88_kernel_m_read_readvariableop0savev2_adam_conv2d_88_bias_m_read_readvariableop2savev2_adam_dense_170_kernel_m_read_readvariableop0savev2_adam_dense_170_bias_m_read_readvariableop2savev2_adam_dense_171_kernel_m_read_readvariableop0savev2_adam_dense_171_bias_m_read_readvariableop2savev2_adam_dense_172_kernel_m_read_readvariableop0savev2_adam_dense_172_bias_m_read_readvariableop2savev2_adam_dense_173_kernel_m_read_readvariableop0savev2_adam_dense_173_bias_m_read_readvariableop2savev2_adam_conv2d_87_kernel_v_read_readvariableop0savev2_adam_conv2d_87_bias_v_read_readvariableop2savev2_adam_conv2d_88_kernel_v_read_readvariableop0savev2_adam_conv2d_88_bias_v_read_readvariableop2savev2_adam_dense_170_kernel_v_read_readvariableop0savev2_adam_dense_170_bias_v_read_readvariableop2savev2_adam_dense_171_kernel_v_read_readvariableop0savev2_adam_dense_171_bias_v_read_readvariableop2savev2_adam_dense_172_kernel_v_read_readvariableop0savev2_adam_dense_172_bias_v_read_readvariableop2savev2_adam_dense_173_kernel_v_read_readvariableop0savev2_adam_dense_173_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
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

identity_1Identity_1:output:0*®
_input_shapesЦ
У: :А:А:АА:А:
АА:А:
АА:А:
АА:А:	А!:!: : : : : : : : : :А:А:АА:А:
АА:А:
АА:А:
АА:А:	А!:!:А:А:АА:А:
АА:А:
АА:А:
АА:А:	А!:!: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_output_shapes
:А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А:%!

_output_shapes
:	А!: 
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
: :-)
'
_output_shapes
:А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:% !

_output_shapes
:	А!: !

_output_shapes
:!:-")
'
_output_shapes
:А:!#

_output_shapes	
:А:.$*
(
_output_shapes
:АА:!%

_output_shapes	
:А:&&"
 
_output_shapes
:
АА:!'

_output_shapes	
:А:&("
 
_output_shapes
:
АА:!)

_output_shapes	
:А:&*"
 
_output_shapes
:
АА:!+

_output_shapes	
:А:%,!

_output_shapes
:	А!: -

_output_shapes
:!:.

_output_shapes
: 
пA
г	
I__inference_sequential_58_layer_call_and_return_conditional_losses_877493

inputsC
(conv2d_87_conv2d_readvariableop_resource:А8
)conv2d_87_biasadd_readvariableop_resource:	АD
(conv2d_88_conv2d_readvariableop_resource:АА8
)conv2d_88_biasadd_readvariableop_resource:	А<
(dense_170_matmul_readvariableop_resource:
АА8
)dense_170_biasadd_readvariableop_resource:	А<
(dense_171_matmul_readvariableop_resource:
АА8
)dense_171_biasadd_readvariableop_resource:	А<
(dense_172_matmul_readvariableop_resource:
АА8
)dense_172_biasadd_readvariableop_resource:	А;
(dense_173_matmul_readvariableop_resource:	А!7
)dense_173_biasadd_readvariableop_resource:!
identityИҐ conv2d_87/BiasAdd/ReadVariableOpҐconv2d_87/Conv2D/ReadVariableOpҐ conv2d_88/BiasAdd/ReadVariableOpҐconv2d_88/Conv2D/ReadVariableOpҐ dense_170/BiasAdd/ReadVariableOpҐdense_170/MatMul/ReadVariableOpҐ dense_171/BiasAdd/ReadVariableOpҐdense_171/MatMul/ReadVariableOpҐ dense_172/BiasAdd/ReadVariableOpҐdense_172/MatMul/ReadVariableOpҐ dense_173/BiasAdd/ReadVariableOpҐdense_173/MatMul/ReadVariableOpі
conv2d_87/Conv2D/ReadVariableOpReadVariableOp(conv2d_87_conv2d_readvariableop_resource*'
_output_shapes
:А*
dtype02!
conv2d_87/Conv2D/ReadVariableOp√
conv2d_87/Conv2DConv2Dinputs'conv2d_87/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
conv2d_87/Conv2DЂ
 conv2d_87/BiasAdd/ReadVariableOpReadVariableOp)conv2d_87_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_87/BiasAdd/ReadVariableOp±
conv2d_87/BiasAddBiasAddconv2d_87/Conv2D:output:0(conv2d_87/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_87/BiasAdd
conv2d_87/ReluReluconv2d_87/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_87/ReluЋ
max_pooling2d_87/MaxPoolMaxPoolconv2d_87/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_87/MaxPoolµ
conv2d_88/Conv2D/ReadVariableOpReadVariableOp(conv2d_88_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_88/Conv2D/ReadVariableOpё
conv2d_88/Conv2DConv2D!max_pooling2d_87/MaxPool:output:0'conv2d_88/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
conv2d_88/Conv2DЂ
 conv2d_88/BiasAdd/ReadVariableOpReadVariableOp)conv2d_88_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_88/BiasAdd/ReadVariableOp±
conv2d_88/BiasAddBiasAddconv2d_88/Conv2D:output:0(conv2d_88/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_88/BiasAdd
conv2d_88/ReluReluconv2d_88/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_88/ReluЋ
max_pooling2d_88/MaxPoolMaxPoolconv2d_88/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_88/MaxPoolu
flatten_58/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten_58/Const§
flatten_58/ReshapeReshape!max_pooling2d_88/MaxPool:output:0flatten_58/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten_58/Reshape≠
dense_170/MatMul/ReadVariableOpReadVariableOp(dense_170_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02!
dense_170/MatMul/ReadVariableOpІ
dense_170/MatMulMatMulflatten_58/Reshape:output:0'dense_170/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_170/MatMulЂ
 dense_170/BiasAdd/ReadVariableOpReadVariableOp)dense_170_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 dense_170/BiasAdd/ReadVariableOp™
dense_170/BiasAddBiasAdddense_170/MatMul:product:0(dense_170/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_170/BiasAddw
dense_170/ReluReludense_170/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_170/Relu≠
dense_171/MatMul/ReadVariableOpReadVariableOp(dense_171_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02!
dense_171/MatMul/ReadVariableOp®
dense_171/MatMulMatMuldense_170/Relu:activations:0'dense_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_171/MatMulЂ
 dense_171/BiasAdd/ReadVariableOpReadVariableOp)dense_171_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 dense_171/BiasAdd/ReadVariableOp™
dense_171/BiasAddBiasAdddense_171/MatMul:product:0(dense_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_171/BiasAddw
dense_171/ReluReludense_171/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_171/Relu≠
dense_172/MatMul/ReadVariableOpReadVariableOp(dense_172_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02!
dense_172/MatMul/ReadVariableOp®
dense_172/MatMulMatMuldense_171/Relu:activations:0'dense_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_172/MatMulЂ
 dense_172/BiasAdd/ReadVariableOpReadVariableOp)dense_172_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 dense_172/BiasAdd/ReadVariableOp™
dense_172/BiasAddBiasAdddense_172/MatMul:product:0(dense_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_172/BiasAddw
dense_172/ReluReludense_172/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_172/Reluђ
dense_173/MatMul/ReadVariableOpReadVariableOp(dense_173_matmul_readvariableop_resource*
_output_shapes
:	А!*
dtype02!
dense_173/MatMul/ReadVariableOpІ
dense_173/MatMulMatMuldense_172/Relu:activations:0'dense_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€!2
dense_173/MatMul™
 dense_173/BiasAdd/ReadVariableOpReadVariableOp)dense_173_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype02"
 dense_173/BiasAdd/ReadVariableOp©
dense_173/BiasAddBiasAdddense_173/MatMul:product:0(dense_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€!2
dense_173/BiasAddМ
IdentityIdentitydense_173/BiasAdd:output:0!^conv2d_87/BiasAdd/ReadVariableOp ^conv2d_87/Conv2D/ReadVariableOp!^conv2d_88/BiasAdd/ReadVariableOp ^conv2d_88/Conv2D/ReadVariableOp!^dense_170/BiasAdd/ReadVariableOp ^dense_170/MatMul/ReadVariableOp!^dense_171/BiasAdd/ReadVariableOp ^dense_171/MatMul/ReadVariableOp!^dense_172/BiasAdd/ReadVariableOp ^dense_172/MatMul/ReadVariableOp!^dense_173/BiasAdd/ReadVariableOp ^dense_173/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€: : : : : : : : : : : : 2D
 conv2d_87/BiasAdd/ReadVariableOp conv2d_87/BiasAdd/ReadVariableOp2B
conv2d_87/Conv2D/ReadVariableOpconv2d_87/Conv2D/ReadVariableOp2D
 conv2d_88/BiasAdd/ReadVariableOp conv2d_88/BiasAdd/ReadVariableOp2B
conv2d_88/Conv2D/ReadVariableOpconv2d_88/Conv2D/ReadVariableOp2D
 dense_170/BiasAdd/ReadVariableOp dense_170/BiasAdd/ReadVariableOp2B
dense_170/MatMul/ReadVariableOpdense_170/MatMul/ReadVariableOp2D
 dense_171/BiasAdd/ReadVariableOp dense_171/BiasAdd/ReadVariableOp2B
dense_171/MatMul/ReadVariableOpdense_171/MatMul/ReadVariableOp2D
 dense_172/BiasAdd/ReadVariableOp dense_172/BiasAdd/ReadVariableOp2B
dense_172/MatMul/ReadVariableOpdense_172/MatMul/ReadVariableOp2D
 dense_173/BiasAdd/ReadVariableOp dense_173/BiasAdd/ReadVariableOp2B
dense_173/MatMul/ReadVariableOpdense_173/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
’	
ч
E__inference_dense_173_layer_call_and_return_conditional_losses_877672

inputs1
matmul_readvariableop_resource:	А!-
biasadd_readvariableop_resource:!
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А!*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€!2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:!*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€!2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
І
Ъ
*__inference_dense_172_layer_call_fn_877662

inputs
unknown:
АА
	unknown_0:	А
identityИҐStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_172_layer_call_and_return_conditional_losses_8770442
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
¬T
Ф
!__inference__wrapped_model_876924
conv2d_87_inputQ
6sequential_58_conv2d_87_conv2d_readvariableop_resource:АF
7sequential_58_conv2d_87_biasadd_readvariableop_resource:	АR
6sequential_58_conv2d_88_conv2d_readvariableop_resource:ААF
7sequential_58_conv2d_88_biasadd_readvariableop_resource:	АJ
6sequential_58_dense_170_matmul_readvariableop_resource:
ААF
7sequential_58_dense_170_biasadd_readvariableop_resource:	АJ
6sequential_58_dense_171_matmul_readvariableop_resource:
ААF
7sequential_58_dense_171_biasadd_readvariableop_resource:	АJ
6sequential_58_dense_172_matmul_readvariableop_resource:
ААF
7sequential_58_dense_172_biasadd_readvariableop_resource:	АI
6sequential_58_dense_173_matmul_readvariableop_resource:	А!E
7sequential_58_dense_173_biasadd_readvariableop_resource:!
identityИҐ.sequential_58/conv2d_87/BiasAdd/ReadVariableOpҐ-sequential_58/conv2d_87/Conv2D/ReadVariableOpҐ.sequential_58/conv2d_88/BiasAdd/ReadVariableOpҐ-sequential_58/conv2d_88/Conv2D/ReadVariableOpҐ.sequential_58/dense_170/BiasAdd/ReadVariableOpҐ-sequential_58/dense_170/MatMul/ReadVariableOpҐ.sequential_58/dense_171/BiasAdd/ReadVariableOpҐ-sequential_58/dense_171/MatMul/ReadVariableOpҐ.sequential_58/dense_172/BiasAdd/ReadVariableOpҐ-sequential_58/dense_172/MatMul/ReadVariableOpҐ.sequential_58/dense_173/BiasAdd/ReadVariableOpҐ-sequential_58/dense_173/MatMul/ReadVariableOpё
-sequential_58/conv2d_87/Conv2D/ReadVariableOpReadVariableOp6sequential_58_conv2d_87_conv2d_readvariableop_resource*'
_output_shapes
:А*
dtype02/
-sequential_58/conv2d_87/Conv2D/ReadVariableOpц
sequential_58/conv2d_87/Conv2DConv2Dconv2d_87_input5sequential_58/conv2d_87/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2 
sequential_58/conv2d_87/Conv2D’
.sequential_58/conv2d_87/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_conv2d_87_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.sequential_58/conv2d_87/BiasAdd/ReadVariableOpй
sequential_58/conv2d_87/BiasAddBiasAdd'sequential_58/conv2d_87/Conv2D:output:06sequential_58/conv2d_87/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2!
sequential_58/conv2d_87/BiasAdd©
sequential_58/conv2d_87/ReluRelu(sequential_58/conv2d_87/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
sequential_58/conv2d_87/Reluх
&sequential_58/max_pooling2d_87/MaxPoolMaxPool*sequential_58/conv2d_87/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2(
&sequential_58/max_pooling2d_87/MaxPoolя
-sequential_58/conv2d_88/Conv2D/ReadVariableOpReadVariableOp6sequential_58_conv2d_88_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02/
-sequential_58/conv2d_88/Conv2D/ReadVariableOpЦ
sequential_58/conv2d_88/Conv2DConv2D/sequential_58/max_pooling2d_87/MaxPool:output:05sequential_58/conv2d_88/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2 
sequential_58/conv2d_88/Conv2D’
.sequential_58/conv2d_88/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_conv2d_88_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.sequential_58/conv2d_88/BiasAdd/ReadVariableOpй
sequential_58/conv2d_88/BiasAddBiasAdd'sequential_58/conv2d_88/Conv2D:output:06sequential_58/conv2d_88/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2!
sequential_58/conv2d_88/BiasAdd©
sequential_58/conv2d_88/ReluRelu(sequential_58/conv2d_88/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
sequential_58/conv2d_88/Reluх
&sequential_58/max_pooling2d_88/MaxPoolMaxPool*sequential_58/conv2d_88/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2(
&sequential_58/max_pooling2d_88/MaxPoolС
sequential_58/flatten_58/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2 
sequential_58/flatten_58/Const№
 sequential_58/flatten_58/ReshapeReshape/sequential_58/max_pooling2d_88/MaxPool:output:0'sequential_58/flatten_58/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 sequential_58/flatten_58/Reshape„
-sequential_58/dense_170/MatMul/ReadVariableOpReadVariableOp6sequential_58_dense_170_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02/
-sequential_58/dense_170/MatMul/ReadVariableOpя
sequential_58/dense_170/MatMulMatMul)sequential_58/flatten_58/Reshape:output:05sequential_58/dense_170/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
sequential_58/dense_170/MatMul’
.sequential_58/dense_170/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_dense_170_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.sequential_58/dense_170/BiasAdd/ReadVariableOpв
sequential_58/dense_170/BiasAddBiasAdd(sequential_58/dense_170/MatMul:product:06sequential_58/dense_170/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
sequential_58/dense_170/BiasAdd°
sequential_58/dense_170/ReluRelu(sequential_58/dense_170/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_58/dense_170/Relu„
-sequential_58/dense_171/MatMul/ReadVariableOpReadVariableOp6sequential_58_dense_171_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02/
-sequential_58/dense_171/MatMul/ReadVariableOpа
sequential_58/dense_171/MatMulMatMul*sequential_58/dense_170/Relu:activations:05sequential_58/dense_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
sequential_58/dense_171/MatMul’
.sequential_58/dense_171/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_dense_171_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.sequential_58/dense_171/BiasAdd/ReadVariableOpв
sequential_58/dense_171/BiasAddBiasAdd(sequential_58/dense_171/MatMul:product:06sequential_58/dense_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
sequential_58/dense_171/BiasAdd°
sequential_58/dense_171/ReluRelu(sequential_58/dense_171/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_58/dense_171/Relu„
-sequential_58/dense_172/MatMul/ReadVariableOpReadVariableOp6sequential_58_dense_172_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02/
-sequential_58/dense_172/MatMul/ReadVariableOpа
sequential_58/dense_172/MatMulMatMul*sequential_58/dense_171/Relu:activations:05sequential_58/dense_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
sequential_58/dense_172/MatMul’
.sequential_58/dense_172/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_dense_172_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.sequential_58/dense_172/BiasAdd/ReadVariableOpв
sequential_58/dense_172/BiasAddBiasAdd(sequential_58/dense_172/MatMul:product:06sequential_58/dense_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
sequential_58/dense_172/BiasAdd°
sequential_58/dense_172/ReluRelu(sequential_58/dense_172/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_58/dense_172/Relu÷
-sequential_58/dense_173/MatMul/ReadVariableOpReadVariableOp6sequential_58_dense_173_matmul_readvariableop_resource*
_output_shapes
:	А!*
dtype02/
-sequential_58/dense_173/MatMul/ReadVariableOpя
sequential_58/dense_173/MatMulMatMul*sequential_58/dense_172/Relu:activations:05sequential_58/dense_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€!2 
sequential_58/dense_173/MatMul‘
.sequential_58/dense_173/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_dense_173_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype020
.sequential_58/dense_173/BiasAdd/ReadVariableOpб
sequential_58/dense_173/BiasAddBiasAdd(sequential_58/dense_173/MatMul:product:06sequential_58/dense_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€!2!
sequential_58/dense_173/BiasAdd¬
IdentityIdentity(sequential_58/dense_173/BiasAdd:output:0/^sequential_58/conv2d_87/BiasAdd/ReadVariableOp.^sequential_58/conv2d_87/Conv2D/ReadVariableOp/^sequential_58/conv2d_88/BiasAdd/ReadVariableOp.^sequential_58/conv2d_88/Conv2D/ReadVariableOp/^sequential_58/dense_170/BiasAdd/ReadVariableOp.^sequential_58/dense_170/MatMul/ReadVariableOp/^sequential_58/dense_171/BiasAdd/ReadVariableOp.^sequential_58/dense_171/MatMul/ReadVariableOp/^sequential_58/dense_172/BiasAdd/ReadVariableOp.^sequential_58/dense_172/MatMul/ReadVariableOp/^sequential_58/dense_173/BiasAdd/ReadVariableOp.^sequential_58/dense_173/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€: : : : : : : : : : : : 2`
.sequential_58/conv2d_87/BiasAdd/ReadVariableOp.sequential_58/conv2d_87/BiasAdd/ReadVariableOp2^
-sequential_58/conv2d_87/Conv2D/ReadVariableOp-sequential_58/conv2d_87/Conv2D/ReadVariableOp2`
.sequential_58/conv2d_88/BiasAdd/ReadVariableOp.sequential_58/conv2d_88/BiasAdd/ReadVariableOp2^
-sequential_58/conv2d_88/Conv2D/ReadVariableOp-sequential_58/conv2d_88/Conv2D/ReadVariableOp2`
.sequential_58/dense_170/BiasAdd/ReadVariableOp.sequential_58/dense_170/BiasAdd/ReadVariableOp2^
-sequential_58/dense_170/MatMul/ReadVariableOp-sequential_58/dense_170/MatMul/ReadVariableOp2`
.sequential_58/dense_171/BiasAdd/ReadVariableOp.sequential_58/dense_171/BiasAdd/ReadVariableOp2^
-sequential_58/dense_171/MatMul/ReadVariableOp-sequential_58/dense_171/MatMul/ReadVariableOp2`
.sequential_58/dense_172/BiasAdd/ReadVariableOp.sequential_58/dense_172/BiasAdd/ReadVariableOp2^
-sequential_58/dense_172/MatMul/ReadVariableOp-sequential_58/dense_172/MatMul/ReadVariableOp2`
.sequential_58/dense_173/BiasAdd/ReadVariableOp.sequential_58/dense_173/BiasAdd/ReadVariableOp2^
-sequential_58/dense_173/MatMul/ReadVariableOp-sequential_58/dense_173/MatMul/ReadVariableOp:` \
/
_output_shapes
:€€€€€€€€€
)
_user_specified_nameconv2d_87_input
£
Ш
*__inference_dense_173_layer_call_fn_877681

inputs
unknown:	А!
	unknown_0:!
identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_173_layer_call_and_return_conditional_losses_8770602
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ш
“
.__inference_sequential_58_layer_call_fn_877284
conv2d_87_input"
unknown:А
	unknown_0:	А%
	unknown_1:АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А!

unknown_10:!
identityИҐStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallconv2d_87_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€!*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_58_layer_call_and_return_conditional_losses_8772282
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:€€€€€€€€€
)
_user_specified_nameconv2d_87_input
э

…
.__inference_sequential_58_layer_call_fn_877522

inputs"
unknown:А
	unknown_0:	А%
	unknown_1:АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А!

unknown_10:!
identityИҐStatefulPartitionedCall€
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€!*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_58_layer_call_and_return_conditional_losses_8770672
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ж

»
$__inference_signature_wrapper_877395
conv2d_87_input"
unknown:А
	unknown_0:	А%
	unknown_1:АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А!

unknown_10:!
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallconv2d_87_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€!*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_8769242
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:€€€€€€€€€
)
_user_specified_nameconv2d_87_input
Ґ
Б
E__inference_conv2d_88_layer_call_and_return_conditional_losses_876984

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
І
Ъ
*__inference_dense_170_layer_call_fn_877622

inputs
unknown:
АА
	unknown_0:	А
identityИҐStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_170_layer_call_and_return_conditional_losses_8770102
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ЎЅ
ы
"__inference__traced_restore_877984
file_prefix<
!assignvariableop_conv2d_87_kernel:А0
!assignvariableop_1_conv2d_87_bias:	А?
#assignvariableop_2_conv2d_88_kernel:АА0
!assignvariableop_3_conv2d_88_bias:	А7
#assignvariableop_4_dense_170_kernel:
АА0
!assignvariableop_5_dense_170_bias:	А7
#assignvariableop_6_dense_171_kernel:
АА0
!assignvariableop_7_dense_171_bias:	А7
#assignvariableop_8_dense_172_kernel:
АА0
!assignvariableop_9_dense_172_bias:	А7
$assignvariableop_10_dense_173_kernel:	А!0
"assignvariableop_11_dense_173_bias:!'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: F
+assignvariableop_21_adam_conv2d_87_kernel_m:А8
)assignvariableop_22_adam_conv2d_87_bias_m:	АG
+assignvariableop_23_adam_conv2d_88_kernel_m:АА8
)assignvariableop_24_adam_conv2d_88_bias_m:	А?
+assignvariableop_25_adam_dense_170_kernel_m:
АА8
)assignvariableop_26_adam_dense_170_bias_m:	А?
+assignvariableop_27_adam_dense_171_kernel_m:
АА8
)assignvariableop_28_adam_dense_171_bias_m:	А?
+assignvariableop_29_adam_dense_172_kernel_m:
АА8
)assignvariableop_30_adam_dense_172_bias_m:	А>
+assignvariableop_31_adam_dense_173_kernel_m:	А!7
)assignvariableop_32_adam_dense_173_bias_m:!F
+assignvariableop_33_adam_conv2d_87_kernel_v:А8
)assignvariableop_34_adam_conv2d_87_bias_v:	АG
+assignvariableop_35_adam_conv2d_88_kernel_v:АА8
)assignvariableop_36_adam_conv2d_88_bias_v:	А?
+assignvariableop_37_adam_dense_170_kernel_v:
АА8
)assignvariableop_38_adam_dense_170_bias_v:	А?
+assignvariableop_39_adam_dense_171_kernel_v:
АА8
)assignvariableop_40_adam_dense_171_bias_v:	А?
+assignvariableop_41_adam_dense_172_kernel_v:
АА8
)assignvariableop_42_adam_dense_172_bias_v:	А>
+assignvariableop_43_adam_dense_173_kernel_v:	А!7
)assignvariableop_44_adam_dense_173_bias_v:!
identity_46ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9ј
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*ћ
value¬Bњ.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesк
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesФ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ќ
_output_shapesї
Є::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity†
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_87_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¶
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_87_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2®
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_88_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¶
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_88_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4®
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_170_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¶
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_170_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6®
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_171_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¶
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_171_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8®
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_172_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¶
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_172_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10ђ
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_173_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11™
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_173_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12•
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13І
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14І
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¶
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ѓ
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17°
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18°
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19£
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20£
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21≥
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_conv2d_87_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22±
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_conv2d_87_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23≥
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_conv2d_88_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24±
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_conv2d_88_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25≥
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_dense_170_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26±
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_170_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27≥
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_171_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28±
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_171_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29≥
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_172_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30±
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_172_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31≥
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_dense_173_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32±
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_173_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33≥
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_87_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34±
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_87_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35≥
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv2d_88_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36±
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv2d_88_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37≥
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_dense_170_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38±
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_170_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39≥
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_dense_171_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40±
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_171_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41≥
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_dense_172_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42±
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_dense_172_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43≥
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_dense_173_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44±
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_dense_173_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_449
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЉ
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_45ѓ
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
№
M
1__inference_max_pooling2d_87_layer_call_fn_876936

inputs
identityр
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_87_layer_call_and_return_conditional_losses_8769302
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ю
А
E__inference_conv2d_87_layer_call_and_return_conditional_losses_876966

inputs9
conv2d_readvariableop_resource:А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
№
M
1__inference_max_pooling2d_88_layer_call_fn_876948

inputs
identityр
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_88_layer_call_and_return_conditional_losses_8769422
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
є

щ
E__inference_dense_172_layer_call_and_return_conditional_losses_877653

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ђ
h
L__inference_max_pooling2d_87_layer_call_and_return_conditional_losses_876930

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
™,
ч
I__inference_sequential_58_layer_call_and_return_conditional_losses_877067

inputs+
conv2d_87_876967:А
conv2d_87_876969:	А,
conv2d_88_876985:АА
conv2d_88_876987:	А$
dense_170_877011:
АА
dense_170_877013:	А$
dense_171_877028:
АА
dense_171_877030:	А$
dense_172_877045:
АА
dense_172_877047:	А#
dense_173_877061:	А!
dense_173_877063:!
identityИҐ!conv2d_87/StatefulPartitionedCallҐ!conv2d_88/StatefulPartitionedCallҐ!dense_170/StatefulPartitionedCallҐ!dense_171/StatefulPartitionedCallҐ!dense_172/StatefulPartitionedCallҐ!dense_173/StatefulPartitionedCall•
!conv2d_87/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_87_876967conv2d_87_876969*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_87_layer_call_and_return_conditional_losses_8769662#
!conv2d_87/StatefulPartitionedCallЬ
 max_pooling2d_87/PartitionedCallPartitionedCall*conv2d_87/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_87_layer_call_and_return_conditional_losses_8769302"
 max_pooling2d_87/PartitionedCall»
!conv2d_88/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_87/PartitionedCall:output:0conv2d_88_876985conv2d_88_876987*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_88_layer_call_and_return_conditional_losses_8769842#
!conv2d_88/StatefulPartitionedCallЬ
 max_pooling2d_88/PartitionedCallPartitionedCall*conv2d_88/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_88_layer_call_and_return_conditional_losses_8769422"
 max_pooling2d_88/PartitionedCallБ
flatten_58/PartitionedCallPartitionedCall)max_pooling2d_88/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_58_layer_call_and_return_conditional_losses_8769972
flatten_58/PartitionedCallЇ
!dense_170/StatefulPartitionedCallStatefulPartitionedCall#flatten_58/PartitionedCall:output:0dense_170_877011dense_170_877013*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_170_layer_call_and_return_conditional_losses_8770102#
!dense_170/StatefulPartitionedCallЅ
!dense_171/StatefulPartitionedCallStatefulPartitionedCall*dense_170/StatefulPartitionedCall:output:0dense_171_877028dense_171_877030*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_171_layer_call_and_return_conditional_losses_8770272#
!dense_171/StatefulPartitionedCallЅ
!dense_172/StatefulPartitionedCallStatefulPartitionedCall*dense_171/StatefulPartitionedCall:output:0dense_172_877045dense_172_877047*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_172_layer_call_and_return_conditional_losses_8770442#
!dense_172/StatefulPartitionedCallј
!dense_173/StatefulPartitionedCallStatefulPartitionedCall*dense_172/StatefulPartitionedCall:output:0dense_173_877061dense_173_877063*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_173_layer_call_and_return_conditional_losses_8770602#
!dense_173/StatefulPartitionedCall÷
IdentityIdentity*dense_173/StatefulPartitionedCall:output:0"^conv2d_87/StatefulPartitionedCall"^conv2d_88/StatefulPartitionedCall"^dense_170/StatefulPartitionedCall"^dense_171/StatefulPartitionedCall"^dense_172/StatefulPartitionedCall"^dense_173/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€: : : : : : : : : : : : 2F
!conv2d_87/StatefulPartitionedCall!conv2d_87/StatefulPartitionedCall2F
!conv2d_88/StatefulPartitionedCall!conv2d_88/StatefulPartitionedCall2F
!dense_170/StatefulPartitionedCall!dense_170/StatefulPartitionedCall2F
!dense_171/StatefulPartitionedCall!dense_171/StatefulPartitionedCall2F
!dense_172/StatefulPartitionedCall!dense_172/StatefulPartitionedCall2F
!dense_173/StatefulPartitionedCall!dense_173/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
є

щ
E__inference_dense_170_layer_call_and_return_conditional_losses_877010

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ѕ
Ґ
*__inference_conv2d_88_layer_call_fn_877591

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_88_layer_call_and_return_conditional_losses_8769842
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
к
b
F__inference_flatten_58_layer_call_and_return_conditional_losses_877597

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
„
G
+__inference_flatten_58_layer_call_fn_877602

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_58_layer_call_and_return_conditional_losses_8769972
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
’	
ч
E__inference_dense_173_layer_call_and_return_conditional_losses_877060

inputs1
matmul_readvariableop_resource:	А!-
biasadd_readvariableop_resource:!
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А!*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€!2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:!*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€!2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
э

…
.__inference_sequential_58_layer_call_fn_877551

inputs"
unknown:А
	unknown_0:	А%
	unknown_1:АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А!

unknown_10:!
identityИҐStatefulPartitionedCall€
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€!*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_58_layer_call_and_return_conditional_losses_8772282
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ш
“
.__inference_sequential_58_layer_call_fn_877094
conv2d_87_input"
unknown:А
	unknown_0:	А%
	unknown_1:АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А!

unknown_10:!
identityИҐStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallconv2d_87_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€!*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_58_layer_call_and_return_conditional_losses_8770672
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:€€€€€€€€€
)
_user_specified_nameconv2d_87_input
ђ
h
L__inference_max_pooling2d_88_layer_call_and_return_conditional_losses_876942

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
є

щ
E__inference_dense_172_layer_call_and_return_conditional_losses_877044

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ґ
Б
E__inference_conv2d_88_layer_call_and_return_conditional_losses_877582

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
≈,
А
I__inference_sequential_58_layer_call_and_return_conditional_losses_877321
conv2d_87_input+
conv2d_87_877287:А
conv2d_87_877289:	А,
conv2d_88_877293:АА
conv2d_88_877295:	А$
dense_170_877300:
АА
dense_170_877302:	А$
dense_171_877305:
АА
dense_171_877307:	А$
dense_172_877310:
АА
dense_172_877312:	А#
dense_173_877315:	А!
dense_173_877317:!
identityИҐ!conv2d_87/StatefulPartitionedCallҐ!conv2d_88/StatefulPartitionedCallҐ!dense_170/StatefulPartitionedCallҐ!dense_171/StatefulPartitionedCallҐ!dense_172/StatefulPartitionedCallҐ!dense_173/StatefulPartitionedCallЃ
!conv2d_87/StatefulPartitionedCallStatefulPartitionedCallconv2d_87_inputconv2d_87_877287conv2d_87_877289*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_87_layer_call_and_return_conditional_losses_8769662#
!conv2d_87/StatefulPartitionedCallЬ
 max_pooling2d_87/PartitionedCallPartitionedCall*conv2d_87/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_87_layer_call_and_return_conditional_losses_8769302"
 max_pooling2d_87/PartitionedCall»
!conv2d_88/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_87/PartitionedCall:output:0conv2d_88_877293conv2d_88_877295*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_88_layer_call_and_return_conditional_losses_8769842#
!conv2d_88/StatefulPartitionedCallЬ
 max_pooling2d_88/PartitionedCallPartitionedCall*conv2d_88/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_88_layer_call_and_return_conditional_losses_8769422"
 max_pooling2d_88/PartitionedCallБ
flatten_58/PartitionedCallPartitionedCall)max_pooling2d_88/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_58_layer_call_and_return_conditional_losses_8769972
flatten_58/PartitionedCallЇ
!dense_170/StatefulPartitionedCallStatefulPartitionedCall#flatten_58/PartitionedCall:output:0dense_170_877300dense_170_877302*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_170_layer_call_and_return_conditional_losses_8770102#
!dense_170/StatefulPartitionedCallЅ
!dense_171/StatefulPartitionedCallStatefulPartitionedCall*dense_170/StatefulPartitionedCall:output:0dense_171_877305dense_171_877307*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_171_layer_call_and_return_conditional_losses_8770272#
!dense_171/StatefulPartitionedCallЅ
!dense_172/StatefulPartitionedCallStatefulPartitionedCall*dense_171/StatefulPartitionedCall:output:0dense_172_877310dense_172_877312*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_172_layer_call_and_return_conditional_losses_8770442#
!dense_172/StatefulPartitionedCallј
!dense_173/StatefulPartitionedCallStatefulPartitionedCall*dense_172/StatefulPartitionedCall:output:0dense_173_877315dense_173_877317*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_173_layer_call_and_return_conditional_losses_8770602#
!dense_173/StatefulPartitionedCall÷
IdentityIdentity*dense_173/StatefulPartitionedCall:output:0"^conv2d_87/StatefulPartitionedCall"^conv2d_88/StatefulPartitionedCall"^dense_170/StatefulPartitionedCall"^dense_171/StatefulPartitionedCall"^dense_172/StatefulPartitionedCall"^dense_173/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€: : : : : : : : : : : : 2F
!conv2d_87/StatefulPartitionedCall!conv2d_87/StatefulPartitionedCall2F
!conv2d_88/StatefulPartitionedCall!conv2d_88/StatefulPartitionedCall2F
!dense_170/StatefulPartitionedCall!dense_170/StatefulPartitionedCall2F
!dense_171/StatefulPartitionedCall!dense_171/StatefulPartitionedCall2F
!dense_172/StatefulPartitionedCall!dense_172/StatefulPartitionedCall2F
!dense_173/StatefulPartitionedCall!dense_173/StatefulPartitionedCall:` \
/
_output_shapes
:€€€€€€€€€
)
_user_specified_nameconv2d_87_input
є

щ
E__inference_dense_170_layer_call_and_return_conditional_losses_877613

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ю
А
E__inference_conv2d_87_layer_call_and_return_conditional_losses_877562

inputs9
conv2d_readvariableop_resource:А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
є

щ
E__inference_dense_171_layer_call_and_return_conditional_losses_877633

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ћ
°
*__inference_conv2d_87_layer_call_fn_877571

inputs"
unknown:А
	unknown_0:	А
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_87_layer_call_and_return_conditional_losses_8769662
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
™,
ч
I__inference_sequential_58_layer_call_and_return_conditional_losses_877228

inputs+
conv2d_87_877194:А
conv2d_87_877196:	А,
conv2d_88_877200:АА
conv2d_88_877202:	А$
dense_170_877207:
АА
dense_170_877209:	А$
dense_171_877212:
АА
dense_171_877214:	А$
dense_172_877217:
АА
dense_172_877219:	А#
dense_173_877222:	А!
dense_173_877224:!
identityИҐ!conv2d_87/StatefulPartitionedCallҐ!conv2d_88/StatefulPartitionedCallҐ!dense_170/StatefulPartitionedCallҐ!dense_171/StatefulPartitionedCallҐ!dense_172/StatefulPartitionedCallҐ!dense_173/StatefulPartitionedCall•
!conv2d_87/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_87_877194conv2d_87_877196*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_87_layer_call_and_return_conditional_losses_8769662#
!conv2d_87/StatefulPartitionedCallЬ
 max_pooling2d_87/PartitionedCallPartitionedCall*conv2d_87/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_87_layer_call_and_return_conditional_losses_8769302"
 max_pooling2d_87/PartitionedCall»
!conv2d_88/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_87/PartitionedCall:output:0conv2d_88_877200conv2d_88_877202*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_88_layer_call_and_return_conditional_losses_8769842#
!conv2d_88/StatefulPartitionedCallЬ
 max_pooling2d_88/PartitionedCallPartitionedCall*conv2d_88/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_88_layer_call_and_return_conditional_losses_8769422"
 max_pooling2d_88/PartitionedCallБ
flatten_58/PartitionedCallPartitionedCall)max_pooling2d_88/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_58_layer_call_and_return_conditional_losses_8769972
flatten_58/PartitionedCallЇ
!dense_170/StatefulPartitionedCallStatefulPartitionedCall#flatten_58/PartitionedCall:output:0dense_170_877207dense_170_877209*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_170_layer_call_and_return_conditional_losses_8770102#
!dense_170/StatefulPartitionedCallЅ
!dense_171/StatefulPartitionedCallStatefulPartitionedCall*dense_170/StatefulPartitionedCall:output:0dense_171_877212dense_171_877214*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_171_layer_call_and_return_conditional_losses_8770272#
!dense_171/StatefulPartitionedCallЅ
!dense_172/StatefulPartitionedCallStatefulPartitionedCall*dense_171/StatefulPartitionedCall:output:0dense_172_877217dense_172_877219*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_172_layer_call_and_return_conditional_losses_8770442#
!dense_172/StatefulPartitionedCallј
!dense_173/StatefulPartitionedCallStatefulPartitionedCall*dense_172/StatefulPartitionedCall:output:0dense_173_877222dense_173_877224*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_173_layer_call_and_return_conditional_losses_8770602#
!dense_173/StatefulPartitionedCall÷
IdentityIdentity*dense_173/StatefulPartitionedCall:output:0"^conv2d_87/StatefulPartitionedCall"^conv2d_88/StatefulPartitionedCall"^dense_170/StatefulPartitionedCall"^dense_171/StatefulPartitionedCall"^dense_172/StatefulPartitionedCall"^dense_173/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€: : : : : : : : : : : : 2F
!conv2d_87/StatefulPartitionedCall!conv2d_87/StatefulPartitionedCall2F
!conv2d_88/StatefulPartitionedCall!conv2d_88/StatefulPartitionedCall2F
!dense_170/StatefulPartitionedCall!dense_170/StatefulPartitionedCall2F
!dense_171/StatefulPartitionedCall!dense_171/StatefulPartitionedCall2F
!dense_172/StatefulPartitionedCall!dense_172/StatefulPartitionedCall2F
!dense_173/StatefulPartitionedCall!dense_173/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
І
Ъ
*__inference_dense_171_layer_call_fn_877642

inputs
unknown:
АА
	unknown_0:	А
identityИҐStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_171_layer_call_and_return_conditional_losses_8770272
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
к
b
F__inference_flatten_58_layer_call_and_return_conditional_losses_876997

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
пA
г	
I__inference_sequential_58_layer_call_and_return_conditional_losses_877444

inputsC
(conv2d_87_conv2d_readvariableop_resource:А8
)conv2d_87_biasadd_readvariableop_resource:	АD
(conv2d_88_conv2d_readvariableop_resource:АА8
)conv2d_88_biasadd_readvariableop_resource:	А<
(dense_170_matmul_readvariableop_resource:
АА8
)dense_170_biasadd_readvariableop_resource:	А<
(dense_171_matmul_readvariableop_resource:
АА8
)dense_171_biasadd_readvariableop_resource:	А<
(dense_172_matmul_readvariableop_resource:
АА8
)dense_172_biasadd_readvariableop_resource:	А;
(dense_173_matmul_readvariableop_resource:	А!7
)dense_173_biasadd_readvariableop_resource:!
identityИҐ conv2d_87/BiasAdd/ReadVariableOpҐconv2d_87/Conv2D/ReadVariableOpҐ conv2d_88/BiasAdd/ReadVariableOpҐconv2d_88/Conv2D/ReadVariableOpҐ dense_170/BiasAdd/ReadVariableOpҐdense_170/MatMul/ReadVariableOpҐ dense_171/BiasAdd/ReadVariableOpҐdense_171/MatMul/ReadVariableOpҐ dense_172/BiasAdd/ReadVariableOpҐdense_172/MatMul/ReadVariableOpҐ dense_173/BiasAdd/ReadVariableOpҐdense_173/MatMul/ReadVariableOpі
conv2d_87/Conv2D/ReadVariableOpReadVariableOp(conv2d_87_conv2d_readvariableop_resource*'
_output_shapes
:А*
dtype02!
conv2d_87/Conv2D/ReadVariableOp√
conv2d_87/Conv2DConv2Dinputs'conv2d_87/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
conv2d_87/Conv2DЂ
 conv2d_87/BiasAdd/ReadVariableOpReadVariableOp)conv2d_87_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_87/BiasAdd/ReadVariableOp±
conv2d_87/BiasAddBiasAddconv2d_87/Conv2D:output:0(conv2d_87/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_87/BiasAdd
conv2d_87/ReluReluconv2d_87/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_87/ReluЋ
max_pooling2d_87/MaxPoolMaxPoolconv2d_87/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_87/MaxPoolµ
conv2d_88/Conv2D/ReadVariableOpReadVariableOp(conv2d_88_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_88/Conv2D/ReadVariableOpё
conv2d_88/Conv2DConv2D!max_pooling2d_87/MaxPool:output:0'conv2d_88/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
conv2d_88/Conv2DЂ
 conv2d_88/BiasAdd/ReadVariableOpReadVariableOp)conv2d_88_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_88/BiasAdd/ReadVariableOp±
conv2d_88/BiasAddBiasAddconv2d_88/Conv2D:output:0(conv2d_88/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_88/BiasAdd
conv2d_88/ReluReluconv2d_88/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_88/ReluЋ
max_pooling2d_88/MaxPoolMaxPoolconv2d_88/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_88/MaxPoolu
flatten_58/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten_58/Const§
flatten_58/ReshapeReshape!max_pooling2d_88/MaxPool:output:0flatten_58/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten_58/Reshape≠
dense_170/MatMul/ReadVariableOpReadVariableOp(dense_170_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02!
dense_170/MatMul/ReadVariableOpІ
dense_170/MatMulMatMulflatten_58/Reshape:output:0'dense_170/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_170/MatMulЂ
 dense_170/BiasAdd/ReadVariableOpReadVariableOp)dense_170_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 dense_170/BiasAdd/ReadVariableOp™
dense_170/BiasAddBiasAdddense_170/MatMul:product:0(dense_170/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_170/BiasAddw
dense_170/ReluReludense_170/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_170/Relu≠
dense_171/MatMul/ReadVariableOpReadVariableOp(dense_171_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02!
dense_171/MatMul/ReadVariableOp®
dense_171/MatMulMatMuldense_170/Relu:activations:0'dense_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_171/MatMulЂ
 dense_171/BiasAdd/ReadVariableOpReadVariableOp)dense_171_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 dense_171/BiasAdd/ReadVariableOp™
dense_171/BiasAddBiasAdddense_171/MatMul:product:0(dense_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_171/BiasAddw
dense_171/ReluReludense_171/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_171/Relu≠
dense_172/MatMul/ReadVariableOpReadVariableOp(dense_172_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02!
dense_172/MatMul/ReadVariableOp®
dense_172/MatMulMatMuldense_171/Relu:activations:0'dense_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_172/MatMulЂ
 dense_172/BiasAdd/ReadVariableOpReadVariableOp)dense_172_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 dense_172/BiasAdd/ReadVariableOp™
dense_172/BiasAddBiasAdddense_172/MatMul:product:0(dense_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_172/BiasAddw
dense_172/ReluReludense_172/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_172/Reluђ
dense_173/MatMul/ReadVariableOpReadVariableOp(dense_173_matmul_readvariableop_resource*
_output_shapes
:	А!*
dtype02!
dense_173/MatMul/ReadVariableOpІ
dense_173/MatMulMatMuldense_172/Relu:activations:0'dense_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€!2
dense_173/MatMul™
 dense_173/BiasAdd/ReadVariableOpReadVariableOp)dense_173_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype02"
 dense_173/BiasAdd/ReadVariableOp©
dense_173/BiasAddBiasAdddense_173/MatMul:product:0(dense_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€!2
dense_173/BiasAddМ
IdentityIdentitydense_173/BiasAdd:output:0!^conv2d_87/BiasAdd/ReadVariableOp ^conv2d_87/Conv2D/ReadVariableOp!^conv2d_88/BiasAdd/ReadVariableOp ^conv2d_88/Conv2D/ReadVariableOp!^dense_170/BiasAdd/ReadVariableOp ^dense_170/MatMul/ReadVariableOp!^dense_171/BiasAdd/ReadVariableOp ^dense_171/MatMul/ReadVariableOp!^dense_172/BiasAdd/ReadVariableOp ^dense_172/MatMul/ReadVariableOp!^dense_173/BiasAdd/ReadVariableOp ^dense_173/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€: : : : : : : : : : : : 2D
 conv2d_87/BiasAdd/ReadVariableOp conv2d_87/BiasAdd/ReadVariableOp2B
conv2d_87/Conv2D/ReadVariableOpconv2d_87/Conv2D/ReadVariableOp2D
 conv2d_88/BiasAdd/ReadVariableOp conv2d_88/BiasAdd/ReadVariableOp2B
conv2d_88/Conv2D/ReadVariableOpconv2d_88/Conv2D/ReadVariableOp2D
 dense_170/BiasAdd/ReadVariableOp dense_170/BiasAdd/ReadVariableOp2B
dense_170/MatMul/ReadVariableOpdense_170/MatMul/ReadVariableOp2D
 dense_171/BiasAdd/ReadVariableOp dense_171/BiasAdd/ReadVariableOp2B
dense_171/MatMul/ReadVariableOpdense_171/MatMul/ReadVariableOp2D
 dense_172/BiasAdd/ReadVariableOp dense_172/BiasAdd/ReadVariableOp2B
dense_172/MatMul/ReadVariableOpdense_172/MatMul/ReadVariableOp2D
 dense_173/BiasAdd/ReadVariableOp dense_173/BiasAdd/ReadVariableOp2B
dense_173/MatMul/ReadVariableOpdense_173/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≈,
А
I__inference_sequential_58_layer_call_and_return_conditional_losses_877358
conv2d_87_input+
conv2d_87_877324:А
conv2d_87_877326:	А,
conv2d_88_877330:АА
conv2d_88_877332:	А$
dense_170_877337:
АА
dense_170_877339:	А$
dense_171_877342:
АА
dense_171_877344:	А$
dense_172_877347:
АА
dense_172_877349:	А#
dense_173_877352:	А!
dense_173_877354:!
identityИҐ!conv2d_87/StatefulPartitionedCallҐ!conv2d_88/StatefulPartitionedCallҐ!dense_170/StatefulPartitionedCallҐ!dense_171/StatefulPartitionedCallҐ!dense_172/StatefulPartitionedCallҐ!dense_173/StatefulPartitionedCallЃ
!conv2d_87/StatefulPartitionedCallStatefulPartitionedCallconv2d_87_inputconv2d_87_877324conv2d_87_877326*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_87_layer_call_and_return_conditional_losses_8769662#
!conv2d_87/StatefulPartitionedCallЬ
 max_pooling2d_87/PartitionedCallPartitionedCall*conv2d_87/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_87_layer_call_and_return_conditional_losses_8769302"
 max_pooling2d_87/PartitionedCall»
!conv2d_88/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_87/PartitionedCall:output:0conv2d_88_877330conv2d_88_877332*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_88_layer_call_and_return_conditional_losses_8769842#
!conv2d_88/StatefulPartitionedCallЬ
 max_pooling2d_88/PartitionedCallPartitionedCall*conv2d_88/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_88_layer_call_and_return_conditional_losses_8769422"
 max_pooling2d_88/PartitionedCallБ
flatten_58/PartitionedCallPartitionedCall)max_pooling2d_88/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_58_layer_call_and_return_conditional_losses_8769972
flatten_58/PartitionedCallЇ
!dense_170/StatefulPartitionedCallStatefulPartitionedCall#flatten_58/PartitionedCall:output:0dense_170_877337dense_170_877339*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_170_layer_call_and_return_conditional_losses_8770102#
!dense_170/StatefulPartitionedCallЅ
!dense_171/StatefulPartitionedCallStatefulPartitionedCall*dense_170/StatefulPartitionedCall:output:0dense_171_877342dense_171_877344*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_171_layer_call_and_return_conditional_losses_8770272#
!dense_171/StatefulPartitionedCallЅ
!dense_172/StatefulPartitionedCallStatefulPartitionedCall*dense_171/StatefulPartitionedCall:output:0dense_172_877347dense_172_877349*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_172_layer_call_and_return_conditional_losses_8770442#
!dense_172/StatefulPartitionedCallј
!dense_173/StatefulPartitionedCallStatefulPartitionedCall*dense_172/StatefulPartitionedCall:output:0dense_173_877352dense_173_877354*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_173_layer_call_and_return_conditional_losses_8770602#
!dense_173/StatefulPartitionedCall÷
IdentityIdentity*dense_173/StatefulPartitionedCall:output:0"^conv2d_87/StatefulPartitionedCall"^conv2d_88/StatefulPartitionedCall"^dense_170/StatefulPartitionedCall"^dense_171/StatefulPartitionedCall"^dense_172/StatefulPartitionedCall"^dense_173/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€: : : : : : : : : : : : 2F
!conv2d_87/StatefulPartitionedCall!conv2d_87/StatefulPartitionedCall2F
!conv2d_88/StatefulPartitionedCall!conv2d_88/StatefulPartitionedCall2F
!dense_170/StatefulPartitionedCall!dense_170/StatefulPartitionedCall2F
!dense_171/StatefulPartitionedCall!dense_171/StatefulPartitionedCall2F
!dense_172/StatefulPartitionedCall!dense_172/StatefulPartitionedCall2F
!dense_173/StatefulPartitionedCall!dense_173/StatefulPartitionedCall:` \
/
_output_shapes
:€€€€€€€€€
)
_user_specified_nameconv2d_87_input
є

щ
E__inference_dense_171_layer_call_and_return_conditional_losses_877027

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs"ћL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ƒ
serving_default∞
S
conv2d_87_input@
!serving_default_conv2d_87_input:0€€€€€€€€€=
	dense_1730
StatefulPartitionedCall:0€€€€€€€€€!tensorflow/serving/predict:пґ
÷R
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
+Ъ&call_and_return_all_conditional_losses
Ы_default_save_signature
Ь__call__"чN
_tf_keras_sequentialЎN{"name": "sequential_58", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_58", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_87_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_87", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_87", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_88", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_88", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_58", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_170", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_171", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_172", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_173", "trainable": true, "dtype": "float32", "units": 33, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 16, 16, 3]}, "float32", "conv2d_87_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_58", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_87_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_87", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_87", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "conv2d_88", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_88", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8}, {"class_name": "Flatten", "config": {"name": "flatten_58", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 9}, {"class_name": "Dense", "config": {"name": "dense_170", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, {"class_name": "Dense", "config": {"name": "dense_171", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15}, {"class_name": "Dense", "config": {"name": "dense_172", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18}, {"class_name": "Dense", "config": {"name": "dense_173", "trainable": true, "dtype": "float32", "units": 33, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 21}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}, "shared_object_id": 24}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 25}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
‘

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
+Э&call_and_return_all_conditional_losses
Ю__call__"≠

_tf_keras_layerУ
{"name": "conv2d_87", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_87", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 3]}}
≤
regularization_losses
	variables
trainable_variables
	keras_api
+Я&call_and_return_all_conditional_losses
†__call__"°
_tf_keras_layerЗ{"name": "max_pooling2d_87", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_87", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 26}}
’


kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
+°&call_and_return_all_conditional_losses
Ґ__call__"Ѓ	
_tf_keras_layerФ	{"name": "conv2d_88", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_88", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 27}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 7, 256]}}
≤
 regularization_losses
!	variables
"trainable_variables
#	keras_api
+£&call_and_return_all_conditional_losses
§__call__"°
_tf_keras_layerЗ{"name": "max_pooling2d_88", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_88", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 28}}
Щ
$regularization_losses
%	variables
&trainable_variables
'	keras_api
+•&call_and_return_all_conditional_losses
¶__call__"И
_tf_keras_layerо{"name": "flatten_58", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_58", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 29}}
џ

(kernel
)bias
*regularization_losses
+	variables
,trainable_variables
-	keras_api
+І&call_and_return_all_conditional_losses
®__call__"і
_tf_keras_layerЪ{"name": "dense_170", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_170", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
ў

.kernel
/bias
0regularization_losses
1	variables
2trainable_variables
3	keras_api
+©&call_and_return_all_conditional_losses
™__call__"≤
_tf_keras_layerШ{"name": "dense_171", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_171", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 31}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
ў

4kernel
5bias
6regularization_losses
7	variables
8trainable_variables
9	keras_api
+Ђ&call_and_return_all_conditional_losses
ђ__call__"≤
_tf_keras_layerШ{"name": "dense_172", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_172", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 32}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
Џ

:kernel
;bias
<regularization_losses
=	variables
>trainable_variables
?	keras_api
+≠&call_and_return_all_conditional_losses
Ѓ__call__"≥
_tf_keras_layerЩ{"name": "dense_173", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_173", "trainable": true, "dtype": "float32", "units": 33, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
√
@iter

Abeta_1

Bbeta_2
	Cdecay
Dlearning_ratemВmГmДmЕ(mЖ)mЗ.mИ/mЙ4mК5mЛ:mМ;mНvОvПvРvС(vТ)vУ.vФ/vХ4vЦ5vЧ:vШ;vЩ"
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
ќ
Elayer_metrics
regularization_losses
	variables

Flayers
Gmetrics
Hnon_trainable_variables
trainable_variables
Ilayer_regularization_losses
Ь__call__
Ы_default_save_signature
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
-
ѓserving_default"
signature_map
+:)А2conv2d_87/kernel
:А2conv2d_87/bias
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
∞
Jlayer_metrics
regularization_losses
	variables

Klayers
Lmetrics
Mnon_trainable_variables
trainable_variables
Nlayer_regularization_losses
Ю__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
Olayer_metrics
regularization_losses
	variables

Players
Qmetrics
Rnon_trainable_variables
trainable_variables
Slayer_regularization_losses
†__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
,:*АА2conv2d_88/kernel
:А2conv2d_88/bias
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
∞
Tlayer_metrics
regularization_losses
	variables

Ulayers
Vmetrics
Wnon_trainable_variables
trainable_variables
Xlayer_regularization_losses
Ґ__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
Ylayer_metrics
 regularization_losses
!	variables

Zlayers
[metrics
\non_trainable_variables
"trainable_variables
]layer_regularization_losses
§__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
^layer_metrics
$regularization_losses
%	variables

_layers
`metrics
anon_trainable_variables
&trainable_variables
blayer_regularization_losses
¶__call__
+•&call_and_return_all_conditional_losses
'•"call_and_return_conditional_losses"
_generic_user_object
$:"
АА2dense_170/kernel
:А2dense_170/bias
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
∞
clayer_metrics
*regularization_losses
+	variables

dlayers
emetrics
fnon_trainable_variables
,trainable_variables
glayer_regularization_losses
®__call__
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses"
_generic_user_object
$:"
АА2dense_171/kernel
:А2dense_171/bias
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
∞
hlayer_metrics
0regularization_losses
1	variables

ilayers
jmetrics
knon_trainable_variables
2trainable_variables
llayer_regularization_losses
™__call__
+©&call_and_return_all_conditional_losses
'©"call_and_return_conditional_losses"
_generic_user_object
$:"
АА2dense_172/kernel
:А2dense_172/bias
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
∞
mlayer_metrics
6regularization_losses
7	variables

nlayers
ometrics
pnon_trainable_variables
8trainable_variables
qlayer_regularization_losses
ђ__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses"
_generic_user_object
#:!	А!2dense_173/kernel
:!2dense_173/bias
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
∞
rlayer_metrics
<regularization_losses
=	variables

slayers
tmetrics
unon_trainable_variables
>trainable_variables
vlayer_regularization_losses
Ѓ__call__
+≠&call_and_return_all_conditional_losses
'≠"call_and_return_conditional_losses"
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
‘
	ytotal
	zcount
{	variables
|	keras_api"Э
_tf_keras_metricВ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 34}
†
	}total
	~count

_fn_kwargs
А	variables
Б	keras_api"„
_tf_keras_metricЉ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 25}
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
А	variables"
_generic_user_object
0:.А2Adam/conv2d_87/kernel/m
": А2Adam/conv2d_87/bias/m
1:/АА2Adam/conv2d_88/kernel/m
": А2Adam/conv2d_88/bias/m
):'
АА2Adam/dense_170/kernel/m
": А2Adam/dense_170/bias/m
):'
АА2Adam/dense_171/kernel/m
": А2Adam/dense_171/bias/m
):'
АА2Adam/dense_172/kernel/m
": А2Adam/dense_172/bias/m
(:&	А!2Adam/dense_173/kernel/m
!:!2Adam/dense_173/bias/m
0:.А2Adam/conv2d_87/kernel/v
": А2Adam/conv2d_87/bias/v
1:/АА2Adam/conv2d_88/kernel/v
": А2Adam/conv2d_88/bias/v
):'
АА2Adam/dense_170/kernel/v
": А2Adam/dense_170/bias/v
):'
АА2Adam/dense_171/kernel/v
": А2Adam/dense_171/bias/v
):'
АА2Adam/dense_172/kernel/v
": А2Adam/dense_172/bias/v
(:&	А!2Adam/dense_173/kernel/v
!:!2Adam/dense_173/bias/v
т2п
I__inference_sequential_58_layer_call_and_return_conditional_losses_877444
I__inference_sequential_58_layer_call_and_return_conditional_losses_877493
I__inference_sequential_58_layer_call_and_return_conditional_losses_877321
I__inference_sequential_58_layer_call_and_return_conditional_losses_877358ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
п2м
!__inference__wrapped_model_876924∆
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *6Ґ3
1К.
conv2d_87_input€€€€€€€€€
Ж2Г
.__inference_sequential_58_layer_call_fn_877094
.__inference_sequential_58_layer_call_fn_877522
.__inference_sequential_58_layer_call_fn_877551
.__inference_sequential_58_layer_call_fn_877284ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
п2м
E__inference_conv2d_87_layer_call_and_return_conditional_losses_877562Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_conv2d_87_layer_call_fn_877571Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
і2±
L__inference_max_pooling2d_87_layer_call_and_return_conditional_losses_876930а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Щ2Ц
1__inference_max_pooling2d_87_layer_call_fn_876936а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
п2м
E__inference_conv2d_88_layer_call_and_return_conditional_losses_877582Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_conv2d_88_layer_call_fn_877591Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
і2±
L__inference_max_pooling2d_88_layer_call_and_return_conditional_losses_876942а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Щ2Ц
1__inference_max_pooling2d_88_layer_call_fn_876948а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
р2н
F__inference_flatten_58_layer_call_and_return_conditional_losses_877597Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
’2“
+__inference_flatten_58_layer_call_fn_877602Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_dense_170_layer_call_and_return_conditional_losses_877613Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_dense_170_layer_call_fn_877622Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_dense_171_layer_call_and_return_conditional_losses_877633Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_dense_171_layer_call_fn_877642Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_dense_172_layer_call_and_return_conditional_losses_877653Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_dense_172_layer_call_fn_877662Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_dense_173_layer_call_and_return_conditional_losses_877672Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_dense_173_layer_call_fn_877681Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
”B–
$__inference_signature_wrapper_877395conv2d_87_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 ≠
!__inference__wrapped_model_876924З()./45:;@Ґ=
6Ґ3
1К.
conv2d_87_input€€€€€€€€€
™ "5™2
0
	dense_173#К 
	dense_173€€€€€€€€€!ґ
E__inference_conv2d_87_layer_call_and_return_conditional_losses_877562m7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ О
*__inference_conv2d_87_layer_call_fn_877571`7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ "!К€€€€€€€€€АЈ
E__inference_conv2d_88_layer_call_and_return_conditional_losses_877582n8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ П
*__inference_conv2d_88_layer_call_fn_877591a8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€АІ
E__inference_dense_170_layer_call_and_return_conditional_losses_877613^()0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ 
*__inference_dense_170_layer_call_fn_877622Q()0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€АІ
E__inference_dense_171_layer_call_and_return_conditional_losses_877633^./0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ 
*__inference_dense_171_layer_call_fn_877642Q./0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€АІ
E__inference_dense_172_layer_call_and_return_conditional_losses_877653^450Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ 
*__inference_dense_172_layer_call_fn_877662Q450Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€А¶
E__inference_dense_173_layer_call_and_return_conditional_losses_877672]:;0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€!
Ъ ~
*__inference_dense_173_layer_call_fn_877681P:;0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€!ђ
F__inference_flatten_58_layer_call_and_return_conditional_losses_877597b8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ Д
+__inference_flatten_58_layer_call_fn_877602U8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "К€€€€€€€€€Ап
L__inference_max_pooling2d_87_layer_call_and_return_conditional_losses_876930ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_87_layer_call_fn_876936СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€п
L__inference_max_pooling2d_88_layer_call_and_return_conditional_losses_876942ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_88_layer_call_fn_876948СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ћ
I__inference_sequential_58_layer_call_and_return_conditional_losses_877321()./45:;HҐE
>Ґ;
1К.
conv2d_87_input€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€!
Ъ ћ
I__inference_sequential_58_layer_call_and_return_conditional_losses_877358()./45:;HҐE
>Ґ;
1К.
conv2d_87_input€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€!
Ъ √
I__inference_sequential_58_layer_call_and_return_conditional_losses_877444v()./45:;?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€!
Ъ √
I__inference_sequential_58_layer_call_and_return_conditional_losses_877493v()./45:;?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€!
Ъ §
.__inference_sequential_58_layer_call_fn_877094r()./45:;HҐE
>Ґ;
1К.
conv2d_87_input€€€€€€€€€
p 

 
™ "К€€€€€€€€€!§
.__inference_sequential_58_layer_call_fn_877284r()./45:;HҐE
>Ґ;
1К.
conv2d_87_input€€€€€€€€€
p

 
™ "К€€€€€€€€€!Ы
.__inference_sequential_58_layer_call_fn_877522i()./45:;?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p 

 
™ "К€€€€€€€€€!Ы
.__inference_sequential_58_layer_call_fn_877551i()./45:;?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p

 
™ "К€€€€€€€€€!√
$__inference_signature_wrapper_877395Ъ()./45:;SҐP
Ґ 
I™F
D
conv2d_87_input1К.
conv2d_87_input€€€€€€€€€"5™2
0
	dense_173#К 
	dense_173€€€€€€€€€!