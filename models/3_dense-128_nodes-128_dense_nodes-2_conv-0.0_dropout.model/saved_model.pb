Мј
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
conv2d_75/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*!
shared_nameconv2d_75/kernel
~
$conv2d_75/kernel/Read/ReadVariableOpReadVariableOpconv2d_75/kernel*'
_output_shapes
:А*
dtype0
u
conv2d_75/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_75/bias
n
"conv2d_75/bias/Read/ReadVariableOpReadVariableOpconv2d_75/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_76/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_76/kernel

$conv2d_76/kernel/Read/ReadVariableOpReadVariableOpconv2d_76/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_76/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_76/bias
n
"conv2d_76/bias/Read/ReadVariableOpReadVariableOpconv2d_76/bias*
_output_shapes	
:А*
dtype0
~
dense_138/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*!
shared_namedense_138/kernel
w
$dense_138/kernel/Read/ReadVariableOpReadVariableOpdense_138/kernel* 
_output_shapes
:
АА*
dtype0
u
dense_138/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_138/bias
n
"dense_138/bias/Read/ReadVariableOpReadVariableOpdense_138/bias*
_output_shapes	
:А*
dtype0
~
dense_139/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*!
shared_namedense_139/kernel
w
$dense_139/kernel/Read/ReadVariableOpReadVariableOpdense_139/kernel* 
_output_shapes
:
АА*
dtype0
u
dense_139/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_139/bias
n
"dense_139/bias/Read/ReadVariableOpReadVariableOpdense_139/bias*
_output_shapes	
:А*
dtype0
~
dense_140/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*!
shared_namedense_140/kernel
w
$dense_140/kernel/Read/ReadVariableOpReadVariableOpdense_140/kernel* 
_output_shapes
:
АА*
dtype0
u
dense_140/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_140/bias
n
"dense_140/bias/Read/ReadVariableOpReadVariableOpdense_140/bias*
_output_shapes	
:А*
dtype0
}
dense_141/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А!*!
shared_namedense_141/kernel
v
$dense_141/kernel/Read/ReadVariableOpReadVariableOpdense_141/kernel*
_output_shapes
:	А!*
dtype0
t
dense_141/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*
shared_namedense_141/bias
m
"dense_141/bias/Read/ReadVariableOpReadVariableOpdense_141/bias*
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
Adam/conv2d_75/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdam/conv2d_75/kernel/m
М
+Adam/conv2d_75/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_75/kernel/m*'
_output_shapes
:А*
dtype0
Г
Adam/conv2d_75/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_75/bias/m
|
)Adam/conv2d_75/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_75/bias/m*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_76/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_76/kernel/m
Н
+Adam/conv2d_76/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_76/kernel/m*(
_output_shapes
:АА*
dtype0
Г
Adam/conv2d_76/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_76/bias/m
|
)Adam/conv2d_76/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_76/bias/m*
_output_shapes	
:А*
dtype0
М
Adam/dense_138/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*(
shared_nameAdam/dense_138/kernel/m
Е
+Adam/dense_138/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_138/kernel/m* 
_output_shapes
:
АА*
dtype0
Г
Adam/dense_138/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/dense_138/bias/m
|
)Adam/dense_138/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_138/bias/m*
_output_shapes	
:А*
dtype0
М
Adam/dense_139/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*(
shared_nameAdam/dense_139/kernel/m
Е
+Adam/dense_139/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_139/kernel/m* 
_output_shapes
:
АА*
dtype0
Г
Adam/dense_139/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/dense_139/bias/m
|
)Adam/dense_139/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_139/bias/m*
_output_shapes	
:А*
dtype0
М
Adam/dense_140/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*(
shared_nameAdam/dense_140/kernel/m
Е
+Adam/dense_140/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_140/kernel/m* 
_output_shapes
:
АА*
dtype0
Г
Adam/dense_140/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/dense_140/bias/m
|
)Adam/dense_140/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_140/bias/m*
_output_shapes	
:А*
dtype0
Л
Adam/dense_141/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А!*(
shared_nameAdam/dense_141/kernel/m
Д
+Adam/dense_141/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_141/kernel/m*
_output_shapes
:	А!*
dtype0
В
Adam/dense_141/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*&
shared_nameAdam/dense_141/bias/m
{
)Adam/dense_141/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_141/bias/m*
_output_shapes
:!*
dtype0
У
Adam/conv2d_75/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdam/conv2d_75/kernel/v
М
+Adam/conv2d_75/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_75/kernel/v*'
_output_shapes
:А*
dtype0
Г
Adam/conv2d_75/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_75/bias/v
|
)Adam/conv2d_75/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_75/bias/v*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_76/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_76/kernel/v
Н
+Adam/conv2d_76/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_76/kernel/v*(
_output_shapes
:АА*
dtype0
Г
Adam/conv2d_76/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_76/bias/v
|
)Adam/conv2d_76/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_76/bias/v*
_output_shapes	
:А*
dtype0
М
Adam/dense_138/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*(
shared_nameAdam/dense_138/kernel/v
Е
+Adam/dense_138/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_138/kernel/v* 
_output_shapes
:
АА*
dtype0
Г
Adam/dense_138/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/dense_138/bias/v
|
)Adam/dense_138/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_138/bias/v*
_output_shapes	
:А*
dtype0
М
Adam/dense_139/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*(
shared_nameAdam/dense_139/kernel/v
Е
+Adam/dense_139/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_139/kernel/v* 
_output_shapes
:
АА*
dtype0
Г
Adam/dense_139/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/dense_139/bias/v
|
)Adam/dense_139/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_139/bias/v*
_output_shapes	
:А*
dtype0
М
Adam/dense_140/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*(
shared_nameAdam/dense_140/kernel/v
Е
+Adam/dense_140/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_140/kernel/v* 
_output_shapes
:
АА*
dtype0
Г
Adam/dense_140/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/dense_140/bias/v
|
)Adam/dense_140/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_140/bias/v*
_output_shapes	
:А*
dtype0
Л
Adam/dense_141/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А!*(
shared_nameAdam/dense_141/kernel/v
Д
+Adam/dense_141/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_141/kernel/v*
_output_shapes
:	А!*
dtype0
В
Adam/dense_141/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*&
shared_nameAdam/dense_141/bias/v
{
)Adam/dense_141/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_141/bias/v*
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
VARIABLE_VALUEconv2d_75/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_75/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_76/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_76/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_138/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_138/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_139/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_139/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_140/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_140/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_141/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_141/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/conv2d_75/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_75/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_76/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_76/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_138/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_138/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_139/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_139/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_140/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_140/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_141/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_141/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_75/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_75/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_76/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_76/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_138/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_138/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_139/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_139/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_140/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_140/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_141/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_141/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Т
serving_default_conv2d_75_inputPlaceholder*/
_output_shapes
:€€€€€€€€€*
dtype0*$
shape:€€€€€€€€€
°
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_75_inputconv2d_75/kernelconv2d_75/biasconv2d_76/kernelconv2d_76/biasdense_138/kerneldense_138/biasdense_139/kerneldense_139/biasdense_140/kerneldense_140/biasdense_141/kerneldense_141/bias*
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
$__inference_signature_wrapper_756251
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ј
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_75/kernel/Read/ReadVariableOp"conv2d_75/bias/Read/ReadVariableOp$conv2d_76/kernel/Read/ReadVariableOp"conv2d_76/bias/Read/ReadVariableOp$dense_138/kernel/Read/ReadVariableOp"dense_138/bias/Read/ReadVariableOp$dense_139/kernel/Read/ReadVariableOp"dense_139/bias/Read/ReadVariableOp$dense_140/kernel/Read/ReadVariableOp"dense_140/bias/Read/ReadVariableOp$dense_141/kernel/Read/ReadVariableOp"dense_141/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_75/kernel/m/Read/ReadVariableOp)Adam/conv2d_75/bias/m/Read/ReadVariableOp+Adam/conv2d_76/kernel/m/Read/ReadVariableOp)Adam/conv2d_76/bias/m/Read/ReadVariableOp+Adam/dense_138/kernel/m/Read/ReadVariableOp)Adam/dense_138/bias/m/Read/ReadVariableOp+Adam/dense_139/kernel/m/Read/ReadVariableOp)Adam/dense_139/bias/m/Read/ReadVariableOp+Adam/dense_140/kernel/m/Read/ReadVariableOp)Adam/dense_140/bias/m/Read/ReadVariableOp+Adam/dense_141/kernel/m/Read/ReadVariableOp)Adam/dense_141/bias/m/Read/ReadVariableOp+Adam/conv2d_75/kernel/v/Read/ReadVariableOp)Adam/conv2d_75/bias/v/Read/ReadVariableOp+Adam/conv2d_76/kernel/v/Read/ReadVariableOp)Adam/conv2d_76/bias/v/Read/ReadVariableOp+Adam/dense_138/kernel/v/Read/ReadVariableOp)Adam/dense_138/bias/v/Read/ReadVariableOp+Adam/dense_139/kernel/v/Read/ReadVariableOp)Adam/dense_139/bias/v/Read/ReadVariableOp+Adam/dense_140/kernel/v/Read/ReadVariableOp)Adam/dense_140/bias/v/Read/ReadVariableOp+Adam/dense_141/kernel/v/Read/ReadVariableOp)Adam/dense_141/bias/v/Read/ReadVariableOpConst*:
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
__inference__traced_save_756695
Ј	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_75/kernelconv2d_75/biasconv2d_76/kernelconv2d_76/biasdense_138/kerneldense_138/biasdense_139/kerneldense_139/biasdense_140/kerneldense_140/biasdense_141/kerneldense_141/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_75/kernel/mAdam/conv2d_75/bias/mAdam/conv2d_76/kernel/mAdam/conv2d_76/bias/mAdam/dense_138/kernel/mAdam/dense_138/bias/mAdam/dense_139/kernel/mAdam/dense_139/bias/mAdam/dense_140/kernel/mAdam/dense_140/bias/mAdam/dense_141/kernel/mAdam/dense_141/bias/mAdam/conv2d_75/kernel/vAdam/conv2d_75/bias/vAdam/conv2d_76/kernel/vAdam/conv2d_76/bias/vAdam/dense_138/kernel/vAdam/dense_138/bias/vAdam/dense_139/kernel/vAdam/dense_139/bias/vAdam/dense_140/kernel/vAdam/dense_140/bias/vAdam/dense_141/kernel/vAdam/dense_141/bias/v*9
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
"__inference__traced_restore_756840ді
є

щ
E__inference_dense_138_layer_call_and_return_conditional_losses_755866

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
пA
г	
I__inference_sequential_50_layer_call_and_return_conditional_losses_756300

inputsC
(conv2d_75_conv2d_readvariableop_resource:А8
)conv2d_75_biasadd_readvariableop_resource:	АD
(conv2d_76_conv2d_readvariableop_resource:АА8
)conv2d_76_biasadd_readvariableop_resource:	А<
(dense_138_matmul_readvariableop_resource:
АА8
)dense_138_biasadd_readvariableop_resource:	А<
(dense_139_matmul_readvariableop_resource:
АА8
)dense_139_biasadd_readvariableop_resource:	А<
(dense_140_matmul_readvariableop_resource:
АА8
)dense_140_biasadd_readvariableop_resource:	А;
(dense_141_matmul_readvariableop_resource:	А!7
)dense_141_biasadd_readvariableop_resource:!
identityИҐ conv2d_75/BiasAdd/ReadVariableOpҐconv2d_75/Conv2D/ReadVariableOpҐ conv2d_76/BiasAdd/ReadVariableOpҐconv2d_76/Conv2D/ReadVariableOpҐ dense_138/BiasAdd/ReadVariableOpҐdense_138/MatMul/ReadVariableOpҐ dense_139/BiasAdd/ReadVariableOpҐdense_139/MatMul/ReadVariableOpҐ dense_140/BiasAdd/ReadVariableOpҐdense_140/MatMul/ReadVariableOpҐ dense_141/BiasAdd/ReadVariableOpҐdense_141/MatMul/ReadVariableOpі
conv2d_75/Conv2D/ReadVariableOpReadVariableOp(conv2d_75_conv2d_readvariableop_resource*'
_output_shapes
:А*
dtype02!
conv2d_75/Conv2D/ReadVariableOp√
conv2d_75/Conv2DConv2Dinputs'conv2d_75/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
conv2d_75/Conv2DЂ
 conv2d_75/BiasAdd/ReadVariableOpReadVariableOp)conv2d_75_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_75/BiasAdd/ReadVariableOp±
conv2d_75/BiasAddBiasAddconv2d_75/Conv2D:output:0(conv2d_75/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_75/BiasAdd
conv2d_75/ReluReluconv2d_75/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_75/ReluЋ
max_pooling2d_75/MaxPoolMaxPoolconv2d_75/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_75/MaxPoolµ
conv2d_76/Conv2D/ReadVariableOpReadVariableOp(conv2d_76_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_76/Conv2D/ReadVariableOpё
conv2d_76/Conv2DConv2D!max_pooling2d_75/MaxPool:output:0'conv2d_76/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
conv2d_76/Conv2DЂ
 conv2d_76/BiasAdd/ReadVariableOpReadVariableOp)conv2d_76_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_76/BiasAdd/ReadVariableOp±
conv2d_76/BiasAddBiasAddconv2d_76/Conv2D:output:0(conv2d_76/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_76/BiasAdd
conv2d_76/ReluReluconv2d_76/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_76/ReluЋ
max_pooling2d_76/MaxPoolMaxPoolconv2d_76/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_76/MaxPoolu
flatten_50/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten_50/Const§
flatten_50/ReshapeReshape!max_pooling2d_76/MaxPool:output:0flatten_50/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten_50/Reshape≠
dense_138/MatMul/ReadVariableOpReadVariableOp(dense_138_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02!
dense_138/MatMul/ReadVariableOpІ
dense_138/MatMulMatMulflatten_50/Reshape:output:0'dense_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_138/MatMulЂ
 dense_138/BiasAdd/ReadVariableOpReadVariableOp)dense_138_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 dense_138/BiasAdd/ReadVariableOp™
dense_138/BiasAddBiasAdddense_138/MatMul:product:0(dense_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_138/BiasAddw
dense_138/ReluReludense_138/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_138/Relu≠
dense_139/MatMul/ReadVariableOpReadVariableOp(dense_139_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02!
dense_139/MatMul/ReadVariableOp®
dense_139/MatMulMatMuldense_138/Relu:activations:0'dense_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_139/MatMulЂ
 dense_139/BiasAdd/ReadVariableOpReadVariableOp)dense_139_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 dense_139/BiasAdd/ReadVariableOp™
dense_139/BiasAddBiasAdddense_139/MatMul:product:0(dense_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_139/BiasAddw
dense_139/ReluReludense_139/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_139/Relu≠
dense_140/MatMul/ReadVariableOpReadVariableOp(dense_140_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02!
dense_140/MatMul/ReadVariableOp®
dense_140/MatMulMatMuldense_139/Relu:activations:0'dense_140/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_140/MatMulЂ
 dense_140/BiasAdd/ReadVariableOpReadVariableOp)dense_140_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 dense_140/BiasAdd/ReadVariableOp™
dense_140/BiasAddBiasAdddense_140/MatMul:product:0(dense_140/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_140/BiasAddw
dense_140/ReluReludense_140/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_140/Reluђ
dense_141/MatMul/ReadVariableOpReadVariableOp(dense_141_matmul_readvariableop_resource*
_output_shapes
:	А!*
dtype02!
dense_141/MatMul/ReadVariableOpІ
dense_141/MatMulMatMuldense_140/Relu:activations:0'dense_141/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€!2
dense_141/MatMul™
 dense_141/BiasAdd/ReadVariableOpReadVariableOp)dense_141_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype02"
 dense_141/BiasAdd/ReadVariableOp©
dense_141/BiasAddBiasAdddense_141/MatMul:product:0(dense_141/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€!2
dense_141/BiasAddМ
IdentityIdentitydense_141/BiasAdd:output:0!^conv2d_75/BiasAdd/ReadVariableOp ^conv2d_75/Conv2D/ReadVariableOp!^conv2d_76/BiasAdd/ReadVariableOp ^conv2d_76/Conv2D/ReadVariableOp!^dense_138/BiasAdd/ReadVariableOp ^dense_138/MatMul/ReadVariableOp!^dense_139/BiasAdd/ReadVariableOp ^dense_139/MatMul/ReadVariableOp!^dense_140/BiasAdd/ReadVariableOp ^dense_140/MatMul/ReadVariableOp!^dense_141/BiasAdd/ReadVariableOp ^dense_141/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€: : : : : : : : : : : : 2D
 conv2d_75/BiasAdd/ReadVariableOp conv2d_75/BiasAdd/ReadVariableOp2B
conv2d_75/Conv2D/ReadVariableOpconv2d_75/Conv2D/ReadVariableOp2D
 conv2d_76/BiasAdd/ReadVariableOp conv2d_76/BiasAdd/ReadVariableOp2B
conv2d_76/Conv2D/ReadVariableOpconv2d_76/Conv2D/ReadVariableOp2D
 dense_138/BiasAdd/ReadVariableOp dense_138/BiasAdd/ReadVariableOp2B
dense_138/MatMul/ReadVariableOpdense_138/MatMul/ReadVariableOp2D
 dense_139/BiasAdd/ReadVariableOp dense_139/BiasAdd/ReadVariableOp2B
dense_139/MatMul/ReadVariableOpdense_139/MatMul/ReadVariableOp2D
 dense_140/BiasAdd/ReadVariableOp dense_140/BiasAdd/ReadVariableOp2B
dense_140/MatMul/ReadVariableOpdense_140/MatMul/ReadVariableOp2D
 dense_141/BiasAdd/ReadVariableOp dense_141/BiasAdd/ReadVariableOp2B
dense_141/MatMul/ReadVariableOpdense_141/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
є

щ
E__inference_dense_139_layer_call_and_return_conditional_losses_755883

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ш
“
.__inference_sequential_50_layer_call_fn_756140
conv2d_75_input"
unknown:А
	unknown_0:	А%
	unknown_1:АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А!

unknown_10:!
identityИҐStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallconv2d_75_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
I__inference_sequential_50_layer_call_and_return_conditional_losses_7560842
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
_user_specified_nameconv2d_75_input
ћ
°
*__inference_conv2d_75_layer_call_fn_756427

inputs"
unknown:А
	unknown_0:	А
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_75_layer_call_and_return_conditional_losses_7558222
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

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
’	
ч
E__inference_dense_141_layer_call_and_return_conditional_losses_755916

inputs1
matmul_readvariableop_resource:	А!-
biasadd_readvariableop_resource:!
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А!*
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
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
’	
ч
E__inference_dense_141_layer_call_and_return_conditional_losses_756528

inputs1
matmul_readvariableop_resource:	А!-
biasadd_readvariableop_resource:!
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А!*
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
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ґ
Б
E__inference_conv2d_76_layer_call_and_return_conditional_losses_756438

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ђ
h
L__inference_max_pooling2d_76_layer_call_and_return_conditional_losses_755798

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
£
Ш
*__inference_dense_141_layer_call_fn_756537

inputs
unknown:	А!
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
E__inference_dense_141_layer_call_and_return_conditional_losses_7559162
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
≈,
А
I__inference_sequential_50_layer_call_and_return_conditional_losses_756177
conv2d_75_input+
conv2d_75_756143:А
conv2d_75_756145:	А,
conv2d_76_756149:АА
conv2d_76_756151:	А$
dense_138_756156:
АА
dense_138_756158:	А$
dense_139_756161:
АА
dense_139_756163:	А$
dense_140_756166:
АА
dense_140_756168:	А#
dense_141_756171:	А!
dense_141_756173:!
identityИҐ!conv2d_75/StatefulPartitionedCallҐ!conv2d_76/StatefulPartitionedCallҐ!dense_138/StatefulPartitionedCallҐ!dense_139/StatefulPartitionedCallҐ!dense_140/StatefulPartitionedCallҐ!dense_141/StatefulPartitionedCallЃ
!conv2d_75/StatefulPartitionedCallStatefulPartitionedCallconv2d_75_inputconv2d_75_756143conv2d_75_756145*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_75_layer_call_and_return_conditional_losses_7558222#
!conv2d_75/StatefulPartitionedCallЬ
 max_pooling2d_75/PartitionedCallPartitionedCall*conv2d_75/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_7557862"
 max_pooling2d_75/PartitionedCall»
!conv2d_76/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_75/PartitionedCall:output:0conv2d_76_756149conv2d_76_756151*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_76_layer_call_and_return_conditional_losses_7558402#
!conv2d_76/StatefulPartitionedCallЬ
 max_pooling2d_76/PartitionedCallPartitionedCall*conv2d_76/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_76_layer_call_and_return_conditional_losses_7557982"
 max_pooling2d_76/PartitionedCallБ
flatten_50/PartitionedCallPartitionedCall)max_pooling2d_76/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_50_layer_call_and_return_conditional_losses_7558532
flatten_50/PartitionedCallЇ
!dense_138/StatefulPartitionedCallStatefulPartitionedCall#flatten_50/PartitionedCall:output:0dense_138_756156dense_138_756158*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_138_layer_call_and_return_conditional_losses_7558662#
!dense_138/StatefulPartitionedCallЅ
!dense_139/StatefulPartitionedCallStatefulPartitionedCall*dense_138/StatefulPartitionedCall:output:0dense_139_756161dense_139_756163*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_139_layer_call_and_return_conditional_losses_7558832#
!dense_139/StatefulPartitionedCallЅ
!dense_140/StatefulPartitionedCallStatefulPartitionedCall*dense_139/StatefulPartitionedCall:output:0dense_140_756166dense_140_756168*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_140_layer_call_and_return_conditional_losses_7559002#
!dense_140/StatefulPartitionedCallј
!dense_141/StatefulPartitionedCallStatefulPartitionedCall*dense_140/StatefulPartitionedCall:output:0dense_141_756171dense_141_756173*
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
E__inference_dense_141_layer_call_and_return_conditional_losses_7559162#
!dense_141/StatefulPartitionedCall÷
IdentityIdentity*dense_141/StatefulPartitionedCall:output:0"^conv2d_75/StatefulPartitionedCall"^conv2d_76/StatefulPartitionedCall"^dense_138/StatefulPartitionedCall"^dense_139/StatefulPartitionedCall"^dense_140/StatefulPartitionedCall"^dense_141/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€: : : : : : : : : : : : 2F
!conv2d_75/StatefulPartitionedCall!conv2d_75/StatefulPartitionedCall2F
!conv2d_76/StatefulPartitionedCall!conv2d_76/StatefulPartitionedCall2F
!dense_138/StatefulPartitionedCall!dense_138/StatefulPartitionedCall2F
!dense_139/StatefulPartitionedCall!dense_139/StatefulPartitionedCall2F
!dense_140/StatefulPartitionedCall!dense_140/StatefulPartitionedCall2F
!dense_141/StatefulPartitionedCall!dense_141/StatefulPartitionedCall:` \
/
_output_shapes
:€€€€€€€€€
)
_user_specified_nameconv2d_75_input
ѕ
Ґ
*__inference_conv2d_76_layer_call_fn_756447

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_76_layer_call_and_return_conditional_losses_7558402
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
к
b
F__inference_flatten_50_layer_call_and_return_conditional_losses_756453

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ЎЅ
ы
"__inference__traced_restore_756840
file_prefix<
!assignvariableop_conv2d_75_kernel:А0
!assignvariableop_1_conv2d_75_bias:	А?
#assignvariableop_2_conv2d_76_kernel:АА0
!assignvariableop_3_conv2d_76_bias:	А7
#assignvariableop_4_dense_138_kernel:
АА0
!assignvariableop_5_dense_138_bias:	А7
#assignvariableop_6_dense_139_kernel:
АА0
!assignvariableop_7_dense_139_bias:	А7
#assignvariableop_8_dense_140_kernel:
АА0
!assignvariableop_9_dense_140_bias:	А7
$assignvariableop_10_dense_141_kernel:	А!0
"assignvariableop_11_dense_141_bias:!'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: F
+assignvariableop_21_adam_conv2d_75_kernel_m:А8
)assignvariableop_22_adam_conv2d_75_bias_m:	АG
+assignvariableop_23_adam_conv2d_76_kernel_m:АА8
)assignvariableop_24_adam_conv2d_76_bias_m:	А?
+assignvariableop_25_adam_dense_138_kernel_m:
АА8
)assignvariableop_26_adam_dense_138_bias_m:	А?
+assignvariableop_27_adam_dense_139_kernel_m:
АА8
)assignvariableop_28_adam_dense_139_bias_m:	А?
+assignvariableop_29_adam_dense_140_kernel_m:
АА8
)assignvariableop_30_adam_dense_140_bias_m:	А>
+assignvariableop_31_adam_dense_141_kernel_m:	А!7
)assignvariableop_32_adam_dense_141_bias_m:!F
+assignvariableop_33_adam_conv2d_75_kernel_v:А8
)assignvariableop_34_adam_conv2d_75_bias_v:	АG
+assignvariableop_35_adam_conv2d_76_kernel_v:АА8
)assignvariableop_36_adam_conv2d_76_bias_v:	А?
+assignvariableop_37_adam_dense_138_kernel_v:
АА8
)assignvariableop_38_adam_dense_138_bias_v:	А?
+assignvariableop_39_adam_dense_139_kernel_v:
АА8
)assignvariableop_40_adam_dense_139_bias_v:	А?
+assignvariableop_41_adam_dense_140_kernel_v:
АА8
)assignvariableop_42_adam_dense_140_bias_v:	А>
+assignvariableop_43_adam_dense_141_kernel_v:	А!7
)assignvariableop_44_adam_dense_141_bias_v:!
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
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_75_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¶
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_75_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2®
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_76_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¶
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_76_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4®
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_138_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¶
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_138_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6®
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_139_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¶
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_139_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8®
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_140_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¶
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_140_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10ђ
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_141_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11™
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_141_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_conv2d_75_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22±
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_conv2d_75_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23≥
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_conv2d_76_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24±
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_conv2d_76_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25≥
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_dense_138_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26±
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_138_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27≥
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_139_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28±
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_139_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29≥
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_140_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30±
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_140_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31≥
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_dense_141_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32±
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_141_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33≥
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_75_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34±
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_75_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35≥
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv2d_76_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36±
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv2d_76_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37≥
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_dense_138_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38±
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_138_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39≥
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_dense_139_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40±
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_139_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41≥
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_dense_140_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42±
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_dense_140_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43≥
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_dense_141_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44±
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_dense_141_bias_vIdentity_44:output:0"/device:CPU:0*
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
є

щ
E__inference_dense_139_layer_call_and_return_conditional_losses_756489

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ђ
h
L__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_755786

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
№
M
1__inference_max_pooling2d_75_layer_call_fn_755792

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
L__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_7557862
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
э

…
.__inference_sequential_50_layer_call_fn_756378

inputs"
unknown:А
	unknown_0:	А%
	unknown_1:АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А!

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
I__inference_sequential_50_layer_call_and_return_conditional_losses_7559232
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
Ю
А
E__inference_conv2d_75_layer_call_and_return_conditional_losses_755822

inputs9
conv2d_readvariableop_resource:А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

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
Ъ^
–
__inference__traced_save_756695
file_prefix/
+savev2_conv2d_75_kernel_read_readvariableop-
)savev2_conv2d_75_bias_read_readvariableop/
+savev2_conv2d_76_kernel_read_readvariableop-
)savev2_conv2d_76_bias_read_readvariableop/
+savev2_dense_138_kernel_read_readvariableop-
)savev2_dense_138_bias_read_readvariableop/
+savev2_dense_139_kernel_read_readvariableop-
)savev2_dense_139_bias_read_readvariableop/
+savev2_dense_140_kernel_read_readvariableop-
)savev2_dense_140_bias_read_readvariableop/
+savev2_dense_141_kernel_read_readvariableop-
)savev2_dense_141_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_75_kernel_m_read_readvariableop4
0savev2_adam_conv2d_75_bias_m_read_readvariableop6
2savev2_adam_conv2d_76_kernel_m_read_readvariableop4
0savev2_adam_conv2d_76_bias_m_read_readvariableop6
2savev2_adam_dense_138_kernel_m_read_readvariableop4
0savev2_adam_dense_138_bias_m_read_readvariableop6
2savev2_adam_dense_139_kernel_m_read_readvariableop4
0savev2_adam_dense_139_bias_m_read_readvariableop6
2savev2_adam_dense_140_kernel_m_read_readvariableop4
0savev2_adam_dense_140_bias_m_read_readvariableop6
2savev2_adam_dense_141_kernel_m_read_readvariableop4
0savev2_adam_dense_141_bias_m_read_readvariableop6
2savev2_adam_conv2d_75_kernel_v_read_readvariableop4
0savev2_adam_conv2d_75_bias_v_read_readvariableop6
2savev2_adam_conv2d_76_kernel_v_read_readvariableop4
0savev2_adam_conv2d_76_bias_v_read_readvariableop6
2savev2_adam_dense_138_kernel_v_read_readvariableop4
0savev2_adam_dense_138_bias_v_read_readvariableop6
2savev2_adam_dense_139_kernel_v_read_readvariableop4
0savev2_adam_dense_139_bias_v_read_readvariableop6
2savev2_adam_dense_140_kernel_v_read_readvariableop4
0savev2_adam_dense_140_bias_v_read_readvariableop6
2savev2_adam_dense_141_kernel_v_read_readvariableop4
0savev2_adam_dense_141_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_75_kernel_read_readvariableop)savev2_conv2d_75_bias_read_readvariableop+savev2_conv2d_76_kernel_read_readvariableop)savev2_conv2d_76_bias_read_readvariableop+savev2_dense_138_kernel_read_readvariableop)savev2_dense_138_bias_read_readvariableop+savev2_dense_139_kernel_read_readvariableop)savev2_dense_139_bias_read_readvariableop+savev2_dense_140_kernel_read_readvariableop)savev2_dense_140_bias_read_readvariableop+savev2_dense_141_kernel_read_readvariableop)savev2_dense_141_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_75_kernel_m_read_readvariableop0savev2_adam_conv2d_75_bias_m_read_readvariableop2savev2_adam_conv2d_76_kernel_m_read_readvariableop0savev2_adam_conv2d_76_bias_m_read_readvariableop2savev2_adam_dense_138_kernel_m_read_readvariableop0savev2_adam_dense_138_bias_m_read_readvariableop2savev2_adam_dense_139_kernel_m_read_readvariableop0savev2_adam_dense_139_bias_m_read_readvariableop2savev2_adam_dense_140_kernel_m_read_readvariableop0savev2_adam_dense_140_bias_m_read_readvariableop2savev2_adam_dense_141_kernel_m_read_readvariableop0savev2_adam_dense_141_bias_m_read_readvariableop2savev2_adam_conv2d_75_kernel_v_read_readvariableop0savev2_adam_conv2d_75_bias_v_read_readvariableop2savev2_adam_conv2d_76_kernel_v_read_readvariableop0savev2_adam_conv2d_76_bias_v_read_readvariableop2savev2_adam_dense_138_kernel_v_read_readvariableop0savev2_adam_dense_138_bias_v_read_readvariableop2savev2_adam_dense_139_kernel_v_read_readvariableop0savev2_adam_dense_139_bias_v_read_readvariableop2savev2_adam_dense_140_kernel_v_read_readvariableop0savev2_adam_dense_140_bias_v_read_readvariableop2savev2_adam_dense_141_kernel_v_read_readvariableop0savev2_adam_dense_141_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
У: :А:А:АА:А:
АА:А:
АА:А:
АА:А:	А!:!: : : : : : : : : :А:А:АА:А:
АА:А:
АА:А:
АА:А:	А!:!:А:А:АА:А:
АА:А:
АА:А:
АА:А:	А!:!: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_output_shapes
:А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А:%!

_output_shapes
:	А!: 
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
:А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:% !

_output_shapes
:	А!: !

_output_shapes
:!:-")
'
_output_shapes
:А:!#

_output_shapes	
:А:.$*
(
_output_shapes
:АА:!%

_output_shapes	
:А:&&"
 
_output_shapes
:
АА:!'

_output_shapes	
:А:&("
 
_output_shapes
:
АА:!)

_output_shapes	
:А:&*"
 
_output_shapes
:
АА:!+

_output_shapes	
:А:%,!

_output_shapes
:	А!: -

_output_shapes
:!:.

_output_shapes
: 
пA
г	
I__inference_sequential_50_layer_call_and_return_conditional_losses_756349

inputsC
(conv2d_75_conv2d_readvariableop_resource:А8
)conv2d_75_biasadd_readvariableop_resource:	АD
(conv2d_76_conv2d_readvariableop_resource:АА8
)conv2d_76_biasadd_readvariableop_resource:	А<
(dense_138_matmul_readvariableop_resource:
АА8
)dense_138_biasadd_readvariableop_resource:	А<
(dense_139_matmul_readvariableop_resource:
АА8
)dense_139_biasadd_readvariableop_resource:	А<
(dense_140_matmul_readvariableop_resource:
АА8
)dense_140_biasadd_readvariableop_resource:	А;
(dense_141_matmul_readvariableop_resource:	А!7
)dense_141_biasadd_readvariableop_resource:!
identityИҐ conv2d_75/BiasAdd/ReadVariableOpҐconv2d_75/Conv2D/ReadVariableOpҐ conv2d_76/BiasAdd/ReadVariableOpҐconv2d_76/Conv2D/ReadVariableOpҐ dense_138/BiasAdd/ReadVariableOpҐdense_138/MatMul/ReadVariableOpҐ dense_139/BiasAdd/ReadVariableOpҐdense_139/MatMul/ReadVariableOpҐ dense_140/BiasAdd/ReadVariableOpҐdense_140/MatMul/ReadVariableOpҐ dense_141/BiasAdd/ReadVariableOpҐdense_141/MatMul/ReadVariableOpі
conv2d_75/Conv2D/ReadVariableOpReadVariableOp(conv2d_75_conv2d_readvariableop_resource*'
_output_shapes
:А*
dtype02!
conv2d_75/Conv2D/ReadVariableOp√
conv2d_75/Conv2DConv2Dinputs'conv2d_75/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
conv2d_75/Conv2DЂ
 conv2d_75/BiasAdd/ReadVariableOpReadVariableOp)conv2d_75_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_75/BiasAdd/ReadVariableOp±
conv2d_75/BiasAddBiasAddconv2d_75/Conv2D:output:0(conv2d_75/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_75/BiasAdd
conv2d_75/ReluReluconv2d_75/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_75/ReluЋ
max_pooling2d_75/MaxPoolMaxPoolconv2d_75/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_75/MaxPoolµ
conv2d_76/Conv2D/ReadVariableOpReadVariableOp(conv2d_76_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_76/Conv2D/ReadVariableOpё
conv2d_76/Conv2DConv2D!max_pooling2d_75/MaxPool:output:0'conv2d_76/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
conv2d_76/Conv2DЂ
 conv2d_76/BiasAdd/ReadVariableOpReadVariableOp)conv2d_76_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_76/BiasAdd/ReadVariableOp±
conv2d_76/BiasAddBiasAddconv2d_76/Conv2D:output:0(conv2d_76/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_76/BiasAdd
conv2d_76/ReluReluconv2d_76/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_76/ReluЋ
max_pooling2d_76/MaxPoolMaxPoolconv2d_76/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_76/MaxPoolu
flatten_50/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten_50/Const§
flatten_50/ReshapeReshape!max_pooling2d_76/MaxPool:output:0flatten_50/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten_50/Reshape≠
dense_138/MatMul/ReadVariableOpReadVariableOp(dense_138_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02!
dense_138/MatMul/ReadVariableOpІ
dense_138/MatMulMatMulflatten_50/Reshape:output:0'dense_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_138/MatMulЂ
 dense_138/BiasAdd/ReadVariableOpReadVariableOp)dense_138_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 dense_138/BiasAdd/ReadVariableOp™
dense_138/BiasAddBiasAdddense_138/MatMul:product:0(dense_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_138/BiasAddw
dense_138/ReluReludense_138/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_138/Relu≠
dense_139/MatMul/ReadVariableOpReadVariableOp(dense_139_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02!
dense_139/MatMul/ReadVariableOp®
dense_139/MatMulMatMuldense_138/Relu:activations:0'dense_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_139/MatMulЂ
 dense_139/BiasAdd/ReadVariableOpReadVariableOp)dense_139_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 dense_139/BiasAdd/ReadVariableOp™
dense_139/BiasAddBiasAdddense_139/MatMul:product:0(dense_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_139/BiasAddw
dense_139/ReluReludense_139/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_139/Relu≠
dense_140/MatMul/ReadVariableOpReadVariableOp(dense_140_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02!
dense_140/MatMul/ReadVariableOp®
dense_140/MatMulMatMuldense_139/Relu:activations:0'dense_140/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_140/MatMulЂ
 dense_140/BiasAdd/ReadVariableOpReadVariableOp)dense_140_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 dense_140/BiasAdd/ReadVariableOp™
dense_140/BiasAddBiasAdddense_140/MatMul:product:0(dense_140/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_140/BiasAddw
dense_140/ReluReludense_140/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_140/Reluђ
dense_141/MatMul/ReadVariableOpReadVariableOp(dense_141_matmul_readvariableop_resource*
_output_shapes
:	А!*
dtype02!
dense_141/MatMul/ReadVariableOpІ
dense_141/MatMulMatMuldense_140/Relu:activations:0'dense_141/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€!2
dense_141/MatMul™
 dense_141/BiasAdd/ReadVariableOpReadVariableOp)dense_141_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype02"
 dense_141/BiasAdd/ReadVariableOp©
dense_141/BiasAddBiasAdddense_141/MatMul:product:0(dense_141/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€!2
dense_141/BiasAddМ
IdentityIdentitydense_141/BiasAdd:output:0!^conv2d_75/BiasAdd/ReadVariableOp ^conv2d_75/Conv2D/ReadVariableOp!^conv2d_76/BiasAdd/ReadVariableOp ^conv2d_76/Conv2D/ReadVariableOp!^dense_138/BiasAdd/ReadVariableOp ^dense_138/MatMul/ReadVariableOp!^dense_139/BiasAdd/ReadVariableOp ^dense_139/MatMul/ReadVariableOp!^dense_140/BiasAdd/ReadVariableOp ^dense_140/MatMul/ReadVariableOp!^dense_141/BiasAdd/ReadVariableOp ^dense_141/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€: : : : : : : : : : : : 2D
 conv2d_75/BiasAdd/ReadVariableOp conv2d_75/BiasAdd/ReadVariableOp2B
conv2d_75/Conv2D/ReadVariableOpconv2d_75/Conv2D/ReadVariableOp2D
 conv2d_76/BiasAdd/ReadVariableOp conv2d_76/BiasAdd/ReadVariableOp2B
conv2d_76/Conv2D/ReadVariableOpconv2d_76/Conv2D/ReadVariableOp2D
 dense_138/BiasAdd/ReadVariableOp dense_138/BiasAdd/ReadVariableOp2B
dense_138/MatMul/ReadVariableOpdense_138/MatMul/ReadVariableOp2D
 dense_139/BiasAdd/ReadVariableOp dense_139/BiasAdd/ReadVariableOp2B
dense_139/MatMul/ReadVariableOpdense_139/MatMul/ReadVariableOp2D
 dense_140/BiasAdd/ReadVariableOp dense_140/BiasAdd/ReadVariableOp2B
dense_140/MatMul/ReadVariableOpdense_140/MatMul/ReadVariableOp2D
 dense_141/BiasAdd/ReadVariableOp dense_141/BiasAdd/ReadVariableOp2B
dense_141/MatMul/ReadVariableOpdense_141/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
к
b
F__inference_flatten_50_layer_call_and_return_conditional_losses_755853

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
¬T
Ф
!__inference__wrapped_model_755780
conv2d_75_inputQ
6sequential_50_conv2d_75_conv2d_readvariableop_resource:АF
7sequential_50_conv2d_75_biasadd_readvariableop_resource:	АR
6sequential_50_conv2d_76_conv2d_readvariableop_resource:ААF
7sequential_50_conv2d_76_biasadd_readvariableop_resource:	АJ
6sequential_50_dense_138_matmul_readvariableop_resource:
ААF
7sequential_50_dense_138_biasadd_readvariableop_resource:	АJ
6sequential_50_dense_139_matmul_readvariableop_resource:
ААF
7sequential_50_dense_139_biasadd_readvariableop_resource:	АJ
6sequential_50_dense_140_matmul_readvariableop_resource:
ААF
7sequential_50_dense_140_biasadd_readvariableop_resource:	АI
6sequential_50_dense_141_matmul_readvariableop_resource:	А!E
7sequential_50_dense_141_biasadd_readvariableop_resource:!
identityИҐ.sequential_50/conv2d_75/BiasAdd/ReadVariableOpҐ-sequential_50/conv2d_75/Conv2D/ReadVariableOpҐ.sequential_50/conv2d_76/BiasAdd/ReadVariableOpҐ-sequential_50/conv2d_76/Conv2D/ReadVariableOpҐ.sequential_50/dense_138/BiasAdd/ReadVariableOpҐ-sequential_50/dense_138/MatMul/ReadVariableOpҐ.sequential_50/dense_139/BiasAdd/ReadVariableOpҐ-sequential_50/dense_139/MatMul/ReadVariableOpҐ.sequential_50/dense_140/BiasAdd/ReadVariableOpҐ-sequential_50/dense_140/MatMul/ReadVariableOpҐ.sequential_50/dense_141/BiasAdd/ReadVariableOpҐ-sequential_50/dense_141/MatMul/ReadVariableOpё
-sequential_50/conv2d_75/Conv2D/ReadVariableOpReadVariableOp6sequential_50_conv2d_75_conv2d_readvariableop_resource*'
_output_shapes
:А*
dtype02/
-sequential_50/conv2d_75/Conv2D/ReadVariableOpц
sequential_50/conv2d_75/Conv2DConv2Dconv2d_75_input5sequential_50/conv2d_75/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2 
sequential_50/conv2d_75/Conv2D’
.sequential_50/conv2d_75/BiasAdd/ReadVariableOpReadVariableOp7sequential_50_conv2d_75_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.sequential_50/conv2d_75/BiasAdd/ReadVariableOpй
sequential_50/conv2d_75/BiasAddBiasAdd'sequential_50/conv2d_75/Conv2D:output:06sequential_50/conv2d_75/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2!
sequential_50/conv2d_75/BiasAdd©
sequential_50/conv2d_75/ReluRelu(sequential_50/conv2d_75/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
sequential_50/conv2d_75/Reluх
&sequential_50/max_pooling2d_75/MaxPoolMaxPool*sequential_50/conv2d_75/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2(
&sequential_50/max_pooling2d_75/MaxPoolя
-sequential_50/conv2d_76/Conv2D/ReadVariableOpReadVariableOp6sequential_50_conv2d_76_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02/
-sequential_50/conv2d_76/Conv2D/ReadVariableOpЦ
sequential_50/conv2d_76/Conv2DConv2D/sequential_50/max_pooling2d_75/MaxPool:output:05sequential_50/conv2d_76/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2 
sequential_50/conv2d_76/Conv2D’
.sequential_50/conv2d_76/BiasAdd/ReadVariableOpReadVariableOp7sequential_50_conv2d_76_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.sequential_50/conv2d_76/BiasAdd/ReadVariableOpй
sequential_50/conv2d_76/BiasAddBiasAdd'sequential_50/conv2d_76/Conv2D:output:06sequential_50/conv2d_76/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2!
sequential_50/conv2d_76/BiasAdd©
sequential_50/conv2d_76/ReluRelu(sequential_50/conv2d_76/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
sequential_50/conv2d_76/Reluх
&sequential_50/max_pooling2d_76/MaxPoolMaxPool*sequential_50/conv2d_76/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2(
&sequential_50/max_pooling2d_76/MaxPoolС
sequential_50/flatten_50/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2 
sequential_50/flatten_50/Const№
 sequential_50/flatten_50/ReshapeReshape/sequential_50/max_pooling2d_76/MaxPool:output:0'sequential_50/flatten_50/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 sequential_50/flatten_50/Reshape„
-sequential_50/dense_138/MatMul/ReadVariableOpReadVariableOp6sequential_50_dense_138_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02/
-sequential_50/dense_138/MatMul/ReadVariableOpя
sequential_50/dense_138/MatMulMatMul)sequential_50/flatten_50/Reshape:output:05sequential_50/dense_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
sequential_50/dense_138/MatMul’
.sequential_50/dense_138/BiasAdd/ReadVariableOpReadVariableOp7sequential_50_dense_138_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.sequential_50/dense_138/BiasAdd/ReadVariableOpв
sequential_50/dense_138/BiasAddBiasAdd(sequential_50/dense_138/MatMul:product:06sequential_50/dense_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
sequential_50/dense_138/BiasAdd°
sequential_50/dense_138/ReluRelu(sequential_50/dense_138/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_50/dense_138/Relu„
-sequential_50/dense_139/MatMul/ReadVariableOpReadVariableOp6sequential_50_dense_139_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02/
-sequential_50/dense_139/MatMul/ReadVariableOpа
sequential_50/dense_139/MatMulMatMul*sequential_50/dense_138/Relu:activations:05sequential_50/dense_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
sequential_50/dense_139/MatMul’
.sequential_50/dense_139/BiasAdd/ReadVariableOpReadVariableOp7sequential_50_dense_139_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.sequential_50/dense_139/BiasAdd/ReadVariableOpв
sequential_50/dense_139/BiasAddBiasAdd(sequential_50/dense_139/MatMul:product:06sequential_50/dense_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
sequential_50/dense_139/BiasAdd°
sequential_50/dense_139/ReluRelu(sequential_50/dense_139/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_50/dense_139/Relu„
-sequential_50/dense_140/MatMul/ReadVariableOpReadVariableOp6sequential_50_dense_140_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02/
-sequential_50/dense_140/MatMul/ReadVariableOpа
sequential_50/dense_140/MatMulMatMul*sequential_50/dense_139/Relu:activations:05sequential_50/dense_140/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
sequential_50/dense_140/MatMul’
.sequential_50/dense_140/BiasAdd/ReadVariableOpReadVariableOp7sequential_50_dense_140_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.sequential_50/dense_140/BiasAdd/ReadVariableOpв
sequential_50/dense_140/BiasAddBiasAdd(sequential_50/dense_140/MatMul:product:06sequential_50/dense_140/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
sequential_50/dense_140/BiasAdd°
sequential_50/dense_140/ReluRelu(sequential_50/dense_140/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_50/dense_140/Relu÷
-sequential_50/dense_141/MatMul/ReadVariableOpReadVariableOp6sequential_50_dense_141_matmul_readvariableop_resource*
_output_shapes
:	А!*
dtype02/
-sequential_50/dense_141/MatMul/ReadVariableOpя
sequential_50/dense_141/MatMulMatMul*sequential_50/dense_140/Relu:activations:05sequential_50/dense_141/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€!2 
sequential_50/dense_141/MatMul‘
.sequential_50/dense_141/BiasAdd/ReadVariableOpReadVariableOp7sequential_50_dense_141_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype020
.sequential_50/dense_141/BiasAdd/ReadVariableOpб
sequential_50/dense_141/BiasAddBiasAdd(sequential_50/dense_141/MatMul:product:06sequential_50/dense_141/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€!2!
sequential_50/dense_141/BiasAdd¬
IdentityIdentity(sequential_50/dense_141/BiasAdd:output:0/^sequential_50/conv2d_75/BiasAdd/ReadVariableOp.^sequential_50/conv2d_75/Conv2D/ReadVariableOp/^sequential_50/conv2d_76/BiasAdd/ReadVariableOp.^sequential_50/conv2d_76/Conv2D/ReadVariableOp/^sequential_50/dense_138/BiasAdd/ReadVariableOp.^sequential_50/dense_138/MatMul/ReadVariableOp/^sequential_50/dense_139/BiasAdd/ReadVariableOp.^sequential_50/dense_139/MatMul/ReadVariableOp/^sequential_50/dense_140/BiasAdd/ReadVariableOp.^sequential_50/dense_140/MatMul/ReadVariableOp/^sequential_50/dense_141/BiasAdd/ReadVariableOp.^sequential_50/dense_141/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€: : : : : : : : : : : : 2`
.sequential_50/conv2d_75/BiasAdd/ReadVariableOp.sequential_50/conv2d_75/BiasAdd/ReadVariableOp2^
-sequential_50/conv2d_75/Conv2D/ReadVariableOp-sequential_50/conv2d_75/Conv2D/ReadVariableOp2`
.sequential_50/conv2d_76/BiasAdd/ReadVariableOp.sequential_50/conv2d_76/BiasAdd/ReadVariableOp2^
-sequential_50/conv2d_76/Conv2D/ReadVariableOp-sequential_50/conv2d_76/Conv2D/ReadVariableOp2`
.sequential_50/dense_138/BiasAdd/ReadVariableOp.sequential_50/dense_138/BiasAdd/ReadVariableOp2^
-sequential_50/dense_138/MatMul/ReadVariableOp-sequential_50/dense_138/MatMul/ReadVariableOp2`
.sequential_50/dense_139/BiasAdd/ReadVariableOp.sequential_50/dense_139/BiasAdd/ReadVariableOp2^
-sequential_50/dense_139/MatMul/ReadVariableOp-sequential_50/dense_139/MatMul/ReadVariableOp2`
.sequential_50/dense_140/BiasAdd/ReadVariableOp.sequential_50/dense_140/BiasAdd/ReadVariableOp2^
-sequential_50/dense_140/MatMul/ReadVariableOp-sequential_50/dense_140/MatMul/ReadVariableOp2`
.sequential_50/dense_141/BiasAdd/ReadVariableOp.sequential_50/dense_141/BiasAdd/ReadVariableOp2^
-sequential_50/dense_141/MatMul/ReadVariableOp-sequential_50/dense_141/MatMul/ReadVariableOp:` \
/
_output_shapes
:€€€€€€€€€
)
_user_specified_nameconv2d_75_input
™,
ч
I__inference_sequential_50_layer_call_and_return_conditional_losses_756084

inputs+
conv2d_75_756050:А
conv2d_75_756052:	А,
conv2d_76_756056:АА
conv2d_76_756058:	А$
dense_138_756063:
АА
dense_138_756065:	А$
dense_139_756068:
АА
dense_139_756070:	А$
dense_140_756073:
АА
dense_140_756075:	А#
dense_141_756078:	А!
dense_141_756080:!
identityИҐ!conv2d_75/StatefulPartitionedCallҐ!conv2d_76/StatefulPartitionedCallҐ!dense_138/StatefulPartitionedCallҐ!dense_139/StatefulPartitionedCallҐ!dense_140/StatefulPartitionedCallҐ!dense_141/StatefulPartitionedCall•
!conv2d_75/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_75_756050conv2d_75_756052*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_75_layer_call_and_return_conditional_losses_7558222#
!conv2d_75/StatefulPartitionedCallЬ
 max_pooling2d_75/PartitionedCallPartitionedCall*conv2d_75/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_7557862"
 max_pooling2d_75/PartitionedCall»
!conv2d_76/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_75/PartitionedCall:output:0conv2d_76_756056conv2d_76_756058*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_76_layer_call_and_return_conditional_losses_7558402#
!conv2d_76/StatefulPartitionedCallЬ
 max_pooling2d_76/PartitionedCallPartitionedCall*conv2d_76/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_76_layer_call_and_return_conditional_losses_7557982"
 max_pooling2d_76/PartitionedCallБ
flatten_50/PartitionedCallPartitionedCall)max_pooling2d_76/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_50_layer_call_and_return_conditional_losses_7558532
flatten_50/PartitionedCallЇ
!dense_138/StatefulPartitionedCallStatefulPartitionedCall#flatten_50/PartitionedCall:output:0dense_138_756063dense_138_756065*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_138_layer_call_and_return_conditional_losses_7558662#
!dense_138/StatefulPartitionedCallЅ
!dense_139/StatefulPartitionedCallStatefulPartitionedCall*dense_138/StatefulPartitionedCall:output:0dense_139_756068dense_139_756070*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_139_layer_call_and_return_conditional_losses_7558832#
!dense_139/StatefulPartitionedCallЅ
!dense_140/StatefulPartitionedCallStatefulPartitionedCall*dense_139/StatefulPartitionedCall:output:0dense_140_756073dense_140_756075*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_140_layer_call_and_return_conditional_losses_7559002#
!dense_140/StatefulPartitionedCallј
!dense_141/StatefulPartitionedCallStatefulPartitionedCall*dense_140/StatefulPartitionedCall:output:0dense_141_756078dense_141_756080*
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
E__inference_dense_141_layer_call_and_return_conditional_losses_7559162#
!dense_141/StatefulPartitionedCall÷
IdentityIdentity*dense_141/StatefulPartitionedCall:output:0"^conv2d_75/StatefulPartitionedCall"^conv2d_76/StatefulPartitionedCall"^dense_138/StatefulPartitionedCall"^dense_139/StatefulPartitionedCall"^dense_140/StatefulPartitionedCall"^dense_141/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€: : : : : : : : : : : : 2F
!conv2d_75/StatefulPartitionedCall!conv2d_75/StatefulPartitionedCall2F
!conv2d_76/StatefulPartitionedCall!conv2d_76/StatefulPartitionedCall2F
!dense_138/StatefulPartitionedCall!dense_138/StatefulPartitionedCall2F
!dense_139/StatefulPartitionedCall!dense_139/StatefulPartitionedCall2F
!dense_140/StatefulPartitionedCall!dense_140/StatefulPartitionedCall2F
!dense_141/StatefulPartitionedCall!dense_141/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
„
G
+__inference_flatten_50_layer_call_fn_756458

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
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_50_layer_call_and_return_conditional_losses_7558532
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
є

щ
E__inference_dense_140_layer_call_and_return_conditional_losses_755900

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ґ
Б
E__inference_conv2d_76_layer_call_and_return_conditional_losses_755840

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ш
“
.__inference_sequential_50_layer_call_fn_755950
conv2d_75_input"
unknown:А
	unknown_0:	А%
	unknown_1:АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А!

unknown_10:!
identityИҐStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallconv2d_75_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
I__inference_sequential_50_layer_call_and_return_conditional_losses_7559232
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
_user_specified_nameconv2d_75_input
Ю
А
E__inference_conv2d_75_layer_call_and_return_conditional_losses_756418

inputs9
conv2d_readvariableop_resource:А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

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
1__inference_max_pooling2d_76_layer_call_fn_755804

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
L__inference_max_pooling2d_76_layer_call_and_return_conditional_losses_7557982
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
E__inference_dense_140_layer_call_and_return_conditional_losses_756509

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
™,
ч
I__inference_sequential_50_layer_call_and_return_conditional_losses_755923

inputs+
conv2d_75_755823:А
conv2d_75_755825:	А,
conv2d_76_755841:АА
conv2d_76_755843:	А$
dense_138_755867:
АА
dense_138_755869:	А$
dense_139_755884:
АА
dense_139_755886:	А$
dense_140_755901:
АА
dense_140_755903:	А#
dense_141_755917:	А!
dense_141_755919:!
identityИҐ!conv2d_75/StatefulPartitionedCallҐ!conv2d_76/StatefulPartitionedCallҐ!dense_138/StatefulPartitionedCallҐ!dense_139/StatefulPartitionedCallҐ!dense_140/StatefulPartitionedCallҐ!dense_141/StatefulPartitionedCall•
!conv2d_75/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_75_755823conv2d_75_755825*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_75_layer_call_and_return_conditional_losses_7558222#
!conv2d_75/StatefulPartitionedCallЬ
 max_pooling2d_75/PartitionedCallPartitionedCall*conv2d_75/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_7557862"
 max_pooling2d_75/PartitionedCall»
!conv2d_76/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_75/PartitionedCall:output:0conv2d_76_755841conv2d_76_755843*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_76_layer_call_and_return_conditional_losses_7558402#
!conv2d_76/StatefulPartitionedCallЬ
 max_pooling2d_76/PartitionedCallPartitionedCall*conv2d_76/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_76_layer_call_and_return_conditional_losses_7557982"
 max_pooling2d_76/PartitionedCallБ
flatten_50/PartitionedCallPartitionedCall)max_pooling2d_76/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_50_layer_call_and_return_conditional_losses_7558532
flatten_50/PartitionedCallЇ
!dense_138/StatefulPartitionedCallStatefulPartitionedCall#flatten_50/PartitionedCall:output:0dense_138_755867dense_138_755869*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_138_layer_call_and_return_conditional_losses_7558662#
!dense_138/StatefulPartitionedCallЅ
!dense_139/StatefulPartitionedCallStatefulPartitionedCall*dense_138/StatefulPartitionedCall:output:0dense_139_755884dense_139_755886*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_139_layer_call_and_return_conditional_losses_7558832#
!dense_139/StatefulPartitionedCallЅ
!dense_140/StatefulPartitionedCallStatefulPartitionedCall*dense_139/StatefulPartitionedCall:output:0dense_140_755901dense_140_755903*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_140_layer_call_and_return_conditional_losses_7559002#
!dense_140/StatefulPartitionedCallј
!dense_141/StatefulPartitionedCallStatefulPartitionedCall*dense_140/StatefulPartitionedCall:output:0dense_141_755917dense_141_755919*
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
E__inference_dense_141_layer_call_and_return_conditional_losses_7559162#
!dense_141/StatefulPartitionedCall÷
IdentityIdentity*dense_141/StatefulPartitionedCall:output:0"^conv2d_75/StatefulPartitionedCall"^conv2d_76/StatefulPartitionedCall"^dense_138/StatefulPartitionedCall"^dense_139/StatefulPartitionedCall"^dense_140/StatefulPartitionedCall"^dense_141/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€: : : : : : : : : : : : 2F
!conv2d_75/StatefulPartitionedCall!conv2d_75/StatefulPartitionedCall2F
!conv2d_76/StatefulPartitionedCall!conv2d_76/StatefulPartitionedCall2F
!dense_138/StatefulPartitionedCall!dense_138/StatefulPartitionedCall2F
!dense_139/StatefulPartitionedCall!dense_139/StatefulPartitionedCall2F
!dense_140/StatefulPartitionedCall!dense_140/StatefulPartitionedCall2F
!dense_141/StatefulPartitionedCall!dense_141/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
э

…
.__inference_sequential_50_layer_call_fn_756407

inputs"
unknown:А
	unknown_0:	А%
	unknown_1:АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А!

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
I__inference_sequential_50_layer_call_and_return_conditional_losses_7560842
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
$__inference_signature_wrapper_756251
conv2d_75_input"
unknown:А
	unknown_0:	А%
	unknown_1:АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А!

unknown_10:!
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallconv2d_75_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
!__inference__wrapped_model_7557802
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
_user_specified_nameconv2d_75_input
є

щ
E__inference_dense_138_layer_call_and_return_conditional_losses_756469

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
≈,
А
I__inference_sequential_50_layer_call_and_return_conditional_losses_756214
conv2d_75_input+
conv2d_75_756180:А
conv2d_75_756182:	А,
conv2d_76_756186:АА
conv2d_76_756188:	А$
dense_138_756193:
АА
dense_138_756195:	А$
dense_139_756198:
АА
dense_139_756200:	А$
dense_140_756203:
АА
dense_140_756205:	А#
dense_141_756208:	А!
dense_141_756210:!
identityИҐ!conv2d_75/StatefulPartitionedCallҐ!conv2d_76/StatefulPartitionedCallҐ!dense_138/StatefulPartitionedCallҐ!dense_139/StatefulPartitionedCallҐ!dense_140/StatefulPartitionedCallҐ!dense_141/StatefulPartitionedCallЃ
!conv2d_75/StatefulPartitionedCallStatefulPartitionedCallconv2d_75_inputconv2d_75_756180conv2d_75_756182*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_75_layer_call_and_return_conditional_losses_7558222#
!conv2d_75/StatefulPartitionedCallЬ
 max_pooling2d_75/PartitionedCallPartitionedCall*conv2d_75/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_7557862"
 max_pooling2d_75/PartitionedCall»
!conv2d_76/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_75/PartitionedCall:output:0conv2d_76_756186conv2d_76_756188*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_76_layer_call_and_return_conditional_losses_7558402#
!conv2d_76/StatefulPartitionedCallЬ
 max_pooling2d_76/PartitionedCallPartitionedCall*conv2d_76/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_76_layer_call_and_return_conditional_losses_7557982"
 max_pooling2d_76/PartitionedCallБ
flatten_50/PartitionedCallPartitionedCall)max_pooling2d_76/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_50_layer_call_and_return_conditional_losses_7558532
flatten_50/PartitionedCallЇ
!dense_138/StatefulPartitionedCallStatefulPartitionedCall#flatten_50/PartitionedCall:output:0dense_138_756193dense_138_756195*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_138_layer_call_and_return_conditional_losses_7558662#
!dense_138/StatefulPartitionedCallЅ
!dense_139/StatefulPartitionedCallStatefulPartitionedCall*dense_138/StatefulPartitionedCall:output:0dense_139_756198dense_139_756200*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_139_layer_call_and_return_conditional_losses_7558832#
!dense_139/StatefulPartitionedCallЅ
!dense_140/StatefulPartitionedCallStatefulPartitionedCall*dense_139/StatefulPartitionedCall:output:0dense_140_756203dense_140_756205*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_140_layer_call_and_return_conditional_losses_7559002#
!dense_140/StatefulPartitionedCallј
!dense_141/StatefulPartitionedCallStatefulPartitionedCall*dense_140/StatefulPartitionedCall:output:0dense_141_756208dense_141_756210*
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
E__inference_dense_141_layer_call_and_return_conditional_losses_7559162#
!dense_141/StatefulPartitionedCall÷
IdentityIdentity*dense_141/StatefulPartitionedCall:output:0"^conv2d_75/StatefulPartitionedCall"^conv2d_76/StatefulPartitionedCall"^dense_138/StatefulPartitionedCall"^dense_139/StatefulPartitionedCall"^dense_140/StatefulPartitionedCall"^dense_141/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€!2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€: : : : : : : : : : : : 2F
!conv2d_75/StatefulPartitionedCall!conv2d_75/StatefulPartitionedCall2F
!conv2d_76/StatefulPartitionedCall!conv2d_76/StatefulPartitionedCall2F
!dense_138/StatefulPartitionedCall!dense_138/StatefulPartitionedCall2F
!dense_139/StatefulPartitionedCall!dense_139/StatefulPartitionedCall2F
!dense_140/StatefulPartitionedCall!dense_140/StatefulPartitionedCall2F
!dense_141/StatefulPartitionedCall!dense_141/StatefulPartitionedCall:` \
/
_output_shapes
:€€€€€€€€€
)
_user_specified_nameconv2d_75_input
І
Ъ
*__inference_dense_139_layer_call_fn_756498

inputs
unknown:
АА
	unknown_0:	А
identityИҐStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_139_layer_call_and_return_conditional_losses_7558832
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
І
Ъ
*__inference_dense_138_layer_call_fn_756478

inputs
unknown:
АА
	unknown_0:	А
identityИҐStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_138_layer_call_and_return_conditional_losses_7558662
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
І
Ъ
*__inference_dense_140_layer_call_fn_756518

inputs
unknown:
АА
	unknown_0:	А
identityИҐStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_140_layer_call_and_return_conditional_losses_7559002
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
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
conv2d_75_input@
!serving_default_conv2d_75_input:0€€€€€€€€€=
	dense_1410
StatefulPartitionedCall:0€€€€€€€€€!tensorflow/serving/predict:нґ
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
_tf_keras_sequentialЎN{"name": "sequential_50", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_50", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_75_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_75", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_75", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_76", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_76", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_50", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_138", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_139", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_140", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_141", "trainable": true, "dtype": "float32", "units": 33, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 16, 16, 3]}, "float32", "conv2d_75_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_50", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_75_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_75", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_75", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "conv2d_76", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_76", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8}, {"class_name": "Flatten", "config": {"name": "flatten_50", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 9}, {"class_name": "Dense", "config": {"name": "dense_138", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, {"class_name": "Dense", "config": {"name": "dense_139", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15}, {"class_name": "Dense", "config": {"name": "dense_140", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18}, {"class_name": "Dense", "config": {"name": "dense_141", "trainable": true, "dtype": "float32", "units": 33, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 21}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}, "shared_object_id": 24}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 25}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
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
{"name": "conv2d_75", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_75", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 3]}, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 3]}}
≤
regularization_losses
	variables
trainable_variables
	keras_api
+Я&call_and_return_all_conditional_losses
†__call__"°
_tf_keras_layerЗ{"name": "max_pooling2d_75", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_75", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 26}}
’


kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
+°&call_and_return_all_conditional_losses
Ґ__call__"Ѓ	
_tf_keras_layerФ	{"name": "conv2d_76", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_76", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 27}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 7, 128]}}
≤
 regularization_losses
!	variables
"trainable_variables
#	keras_api
+£&call_and_return_all_conditional_losses
§__call__"°
_tf_keras_layerЗ{"name": "max_pooling2d_76", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_76", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 28}}
Щ
$regularization_losses
%	variables
&trainable_variables
'	keras_api
+•&call_and_return_all_conditional_losses
¶__call__"И
_tf_keras_layerо{"name": "flatten_50", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_50", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 29}}
ў

(kernel
)bias
*regularization_losses
+	variables
,trainable_variables
-	keras_api
+І&call_and_return_all_conditional_losses
®__call__"≤
_tf_keras_layerШ{"name": "dense_138", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_138", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
ў

.kernel
/bias
0regularization_losses
1	variables
2trainable_variables
3	keras_api
+©&call_and_return_all_conditional_losses
™__call__"≤
_tf_keras_layerШ{"name": "dense_139", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_139", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 31}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
ў

4kernel
5bias
6regularization_losses
7	variables
8trainable_variables
9	keras_api
+Ђ&call_and_return_all_conditional_losses
ђ__call__"≤
_tf_keras_layerШ{"name": "dense_140", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_140", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 32}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
Џ

:kernel
;bias
<regularization_losses
=	variables
>trainable_variables
?	keras_api
+≠&call_and_return_all_conditional_losses
Ѓ__call__"≥
_tf_keras_layerЩ{"name": "dense_141", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_141", "trainable": true, "dtype": "float32", "units": 33, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
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
+:)А2conv2d_75/kernel
:А2conv2d_75/bias
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
,:*АА2conv2d_76/kernel
:А2conv2d_76/bias
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
АА2dense_138/kernel
:А2dense_138/bias
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
АА2dense_139/kernel
:А2dense_139/bias
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
АА2dense_140/kernel
:А2dense_140/bias
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
#:!	А!2dense_141/kernel
:!2dense_141/bias
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
0:.А2Adam/conv2d_75/kernel/m
": А2Adam/conv2d_75/bias/m
1:/АА2Adam/conv2d_76/kernel/m
": А2Adam/conv2d_76/bias/m
):'
АА2Adam/dense_138/kernel/m
": А2Adam/dense_138/bias/m
):'
АА2Adam/dense_139/kernel/m
": А2Adam/dense_139/bias/m
):'
АА2Adam/dense_140/kernel/m
": А2Adam/dense_140/bias/m
(:&	А!2Adam/dense_141/kernel/m
!:!2Adam/dense_141/bias/m
0:.А2Adam/conv2d_75/kernel/v
": А2Adam/conv2d_75/bias/v
1:/АА2Adam/conv2d_76/kernel/v
": А2Adam/conv2d_76/bias/v
):'
АА2Adam/dense_138/kernel/v
": А2Adam/dense_138/bias/v
):'
АА2Adam/dense_139/kernel/v
": А2Adam/dense_139/bias/v
):'
АА2Adam/dense_140/kernel/v
": А2Adam/dense_140/bias/v
(:&	А!2Adam/dense_141/kernel/v
!:!2Adam/dense_141/bias/v
т2п
I__inference_sequential_50_layer_call_and_return_conditional_losses_756300
I__inference_sequential_50_layer_call_and_return_conditional_losses_756349
I__inference_sequential_50_layer_call_and_return_conditional_losses_756177
I__inference_sequential_50_layer_call_and_return_conditional_losses_756214ј
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
!__inference__wrapped_model_755780∆
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
conv2d_75_input€€€€€€€€€
Ж2Г
.__inference_sequential_50_layer_call_fn_755950
.__inference_sequential_50_layer_call_fn_756378
.__inference_sequential_50_layer_call_fn_756407
.__inference_sequential_50_layer_call_fn_756140ј
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
E__inference_conv2d_75_layer_call_and_return_conditional_losses_756418Ґ
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
*__inference_conv2d_75_layer_call_fn_756427Ґ
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
L__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_755786а
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
1__inference_max_pooling2d_75_layer_call_fn_755792а
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
E__inference_conv2d_76_layer_call_and_return_conditional_losses_756438Ґ
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
*__inference_conv2d_76_layer_call_fn_756447Ґ
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
L__inference_max_pooling2d_76_layer_call_and_return_conditional_losses_755798а
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
1__inference_max_pooling2d_76_layer_call_fn_755804а
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
F__inference_flatten_50_layer_call_and_return_conditional_losses_756453Ґ
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
+__inference_flatten_50_layer_call_fn_756458Ґ
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
E__inference_dense_138_layer_call_and_return_conditional_losses_756469Ґ
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
*__inference_dense_138_layer_call_fn_756478Ґ
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
E__inference_dense_139_layer_call_and_return_conditional_losses_756489Ґ
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
*__inference_dense_139_layer_call_fn_756498Ґ
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
E__inference_dense_140_layer_call_and_return_conditional_losses_756509Ґ
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
*__inference_dense_140_layer_call_fn_756518Ґ
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
E__inference_dense_141_layer_call_and_return_conditional_losses_756528Ґ
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
*__inference_dense_141_layer_call_fn_756537Ґ
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
$__inference_signature_wrapper_756251conv2d_75_input"Ф
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
!__inference__wrapped_model_755780З()./45:;@Ґ=
6Ґ3
1К.
conv2d_75_input€€€€€€€€€
™ "5™2
0
	dense_141#К 
	dense_141€€€€€€€€€!ґ
E__inference_conv2d_75_layer_call_and_return_conditional_losses_756418m7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ О
*__inference_conv2d_75_layer_call_fn_756427`7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ "!К€€€€€€€€€АЈ
E__inference_conv2d_76_layer_call_and_return_conditional_losses_756438n8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ П
*__inference_conv2d_76_layer_call_fn_756447a8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€АІ
E__inference_dense_138_layer_call_and_return_conditional_losses_756469^()0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ 
*__inference_dense_138_layer_call_fn_756478Q()0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€АІ
E__inference_dense_139_layer_call_and_return_conditional_losses_756489^./0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ 
*__inference_dense_139_layer_call_fn_756498Q./0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€АІ
E__inference_dense_140_layer_call_and_return_conditional_losses_756509^450Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ 
*__inference_dense_140_layer_call_fn_756518Q450Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€А¶
E__inference_dense_141_layer_call_and_return_conditional_losses_756528]:;0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€!
Ъ ~
*__inference_dense_141_layer_call_fn_756537P:;0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€!ђ
F__inference_flatten_50_layer_call_and_return_conditional_losses_756453b8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ Д
+__inference_flatten_50_layer_call_fn_756458U8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "К€€€€€€€€€Ап
L__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_755786ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_75_layer_call_fn_755792СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€п
L__inference_max_pooling2d_76_layer_call_and_return_conditional_losses_755798ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_76_layer_call_fn_755804СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ћ
I__inference_sequential_50_layer_call_and_return_conditional_losses_756177()./45:;HҐE
>Ґ;
1К.
conv2d_75_input€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€!
Ъ ћ
I__inference_sequential_50_layer_call_and_return_conditional_losses_756214()./45:;HҐE
>Ґ;
1К.
conv2d_75_input€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€!
Ъ √
I__inference_sequential_50_layer_call_and_return_conditional_losses_756300v()./45:;?Ґ<
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
I__inference_sequential_50_layer_call_and_return_conditional_losses_756349v()./45:;?Ґ<
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
.__inference_sequential_50_layer_call_fn_755950r()./45:;HҐE
>Ґ;
1К.
conv2d_75_input€€€€€€€€€
p 

 
™ "К€€€€€€€€€!§
.__inference_sequential_50_layer_call_fn_756140r()./45:;HҐE
>Ґ;
1К.
conv2d_75_input€€€€€€€€€
p

 
™ "К€€€€€€€€€!Ы
.__inference_sequential_50_layer_call_fn_756378i()./45:;?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p 

 
™ "К€€€€€€€€€!Ы
.__inference_sequential_50_layer_call_fn_756407i()./45:;?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p

 
™ "К€€€€€€€€€!√
$__inference_signature_wrapper_756251Ъ()./45:;SҐP
Ґ 
I™F
D
conv2d_75_input1К.
conv2d_75_input€€€€€€€€€"5™2
0
	dense_141#К 
	dense_141€€€€€€€€€!