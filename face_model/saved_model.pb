ВЭ
М▌
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
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
executor_typestring Ии
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
 И"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68кД
Д
conv2d_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_40/kernel
}
$conv2d_40/kernel/Read/ReadVariableOpReadVariableOpconv2d_40/kernel*&
_output_shapes
:@*
dtype0
t
conv2d_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_40/bias
m
"conv2d_40/bias/Read/ReadVariableOpReadVariableOpconv2d_40/bias*
_output_shapes
:@*
dtype0
Д
conv2d_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_41/kernel
}
$conv2d_41/kernel/Read/ReadVariableOpReadVariableOpconv2d_41/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_41/bias
m
"conv2d_41/bias/Read/ReadVariableOpReadVariableOpconv2d_41/bias*
_output_shapes
:@*
dtype0
Е
conv2d_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*!
shared_nameconv2d_42/kernel
~
$conv2d_42/kernel/Read/ReadVariableOpReadVariableOpconv2d_42/kernel*'
_output_shapes
:@А*
dtype0
u
conv2d_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_42/bias
n
"conv2d_42/bias/Read/ReadVariableOpReadVariableOpconv2d_42/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_43/kernel

$conv2d_43/kernel/Read/ReadVariableOpReadVariableOpconv2d_43/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_43/bias
n
"conv2d_43/bias/Read/ReadVariableOpReadVariableOpconv2d_43/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_44/kernel

$conv2d_44/kernel/Read/ReadVariableOpReadVariableOpconv2d_44/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_44/bias
n
"conv2d_44/bias/Read/ReadVariableOpReadVariableOpconv2d_44/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_45/kernel

$conv2d_45/kernel/Read/ReadVariableOpReadVariableOpconv2d_45/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_45/bias
n
"conv2d_45/bias/Read/ReadVariableOpReadVariableOpconv2d_45/bias*
_output_shapes	
:А*
dtype0
|
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА* 
shared_namedense_14/kernel
u
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel* 
_output_shapes
:
АА*
dtype0
s
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_14/bias
l
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes	
:А*
dtype0
{
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А* 
shared_namedense_15/kernel
t
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes
:	А*
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes
:*
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
Т
Adam/conv2d_40/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_40/kernel/m
Л
+Adam/conv2d_40/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_40/kernel/m*&
_output_shapes
:@*
dtype0
В
Adam/conv2d_40/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_40/bias/m
{
)Adam/conv2d_40/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_40/bias/m*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_41/kernel/m
Л
+Adam/conv2d_41/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_41/kernel/m*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_41/bias/m
{
)Adam/conv2d_41/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_41/bias/m*
_output_shapes
:@*
dtype0
У
Adam/conv2d_42/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*(
shared_nameAdam/conv2d_42/kernel/m
М
+Adam/conv2d_42/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_42/kernel/m*'
_output_shapes
:@А*
dtype0
Г
Adam/conv2d_42/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_42/bias/m
|
)Adam/conv2d_42/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_42/bias/m*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_43/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_43/kernel/m
Н
+Adam/conv2d_43/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_43/kernel/m*(
_output_shapes
:АА*
dtype0
Г
Adam/conv2d_43/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_43/bias/m
|
)Adam/conv2d_43/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_43/bias/m*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_44/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_44/kernel/m
Н
+Adam/conv2d_44/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_44/kernel/m*(
_output_shapes
:АА*
dtype0
Г
Adam/conv2d_44/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_44/bias/m
|
)Adam/conv2d_44/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_44/bias/m*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_45/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_45/kernel/m
Н
+Adam/conv2d_45/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_45/kernel/m*(
_output_shapes
:АА*
dtype0
Г
Adam/conv2d_45/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_45/bias/m
|
)Adam/conv2d_45/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_45/bias/m*
_output_shapes	
:А*
dtype0
К
Adam/dense_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*'
shared_nameAdam/dense_14/kernel/m
Г
*Adam/dense_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/m* 
_output_shapes
:
АА*
dtype0
Б
Adam/dense_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_14/bias/m
z
(Adam/dense_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/m*
_output_shapes	
:А*
dtype0
Й
Adam/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*'
shared_nameAdam/dense_15/kernel/m
В
*Adam/dense_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/m*
_output_shapes
:	А*
dtype0
А
Adam/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_15/bias/m
y
(Adam/dense_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/m*
_output_shapes
:*
dtype0
Т
Adam/conv2d_40/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_40/kernel/v
Л
+Adam/conv2d_40/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_40/kernel/v*&
_output_shapes
:@*
dtype0
В
Adam/conv2d_40/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_40/bias/v
{
)Adam/conv2d_40/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_40/bias/v*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_41/kernel/v
Л
+Adam/conv2d_41/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_41/kernel/v*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_41/bias/v
{
)Adam/conv2d_41/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_41/bias/v*
_output_shapes
:@*
dtype0
У
Adam/conv2d_42/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*(
shared_nameAdam/conv2d_42/kernel/v
М
+Adam/conv2d_42/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_42/kernel/v*'
_output_shapes
:@А*
dtype0
Г
Adam/conv2d_42/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_42/bias/v
|
)Adam/conv2d_42/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_42/bias/v*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_43/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_43/kernel/v
Н
+Adam/conv2d_43/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_43/kernel/v*(
_output_shapes
:АА*
dtype0
Г
Adam/conv2d_43/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_43/bias/v
|
)Adam/conv2d_43/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_43/bias/v*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_44/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_44/kernel/v
Н
+Adam/conv2d_44/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_44/kernel/v*(
_output_shapes
:АА*
dtype0
Г
Adam/conv2d_44/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_44/bias/v
|
)Adam/conv2d_44/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_44/bias/v*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_45/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_45/kernel/v
Н
+Adam/conv2d_45/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_45/kernel/v*(
_output_shapes
:АА*
dtype0
Г
Adam/conv2d_45/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_45/bias/v
|
)Adam/conv2d_45/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_45/bias/v*
_output_shapes	
:А*
dtype0
К
Adam/dense_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*'
shared_nameAdam/dense_14/kernel/v
Г
*Adam/dense_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/v* 
_output_shapes
:
АА*
dtype0
Б
Adam/dense_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_14/bias/v
z
(Adam/dense_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/v*
_output_shapes	
:А*
dtype0
Й
Adam/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*'
shared_nameAdam/dense_15/kernel/v
В
*Adam/dense_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/v*
_output_shapes
:	А*
dtype0
А
Adam/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_15/bias/v
y
(Adam/dense_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
В~
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╜}
value│}B░} Bй}
ф
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-6
layer-12
layer-13
layer_with_weights-7
layer-14
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
ж

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses*
ж

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses*
О
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses* 
е
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3_random_generator
4__call__
*5&call_and_return_all_conditional_losses* 
ж

6kernel
7bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses*
ж

>kernel
?bias
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses*
ж

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses*
ж

Nkernel
Obias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses*
О
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses* 
О
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses* 
е
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f_random_generator
g__call__
*h&call_and_return_all_conditional_losses* 
О
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses* 
ж

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses*
е
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{_random_generator
|__call__
*}&call_and_return_all_conditional_losses* 
м

~kernel
bias
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses*
Й
	Жiter
Зbeta_1
Иbeta_2

Йdecay
Кlearning_ratemчmш!mщ"mъ6mы7mь>mэ?mюFmяGmЁNmёOmЄomєpmЇ~mїmЎvўv°!v∙"v·6v√7v№>v¤?v■Fv GvАNvБOvВovГpvД~vЕvЖ*
z
0
1
!2
"3
64
75
>6
?7
F8
G9
N10
O11
o12
p13
~14
15*
z
0
1
!2
"3
64
75
>6
?7
F8
G9
N10
O11
o12
p13
~14
15*
* 
╡
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Рserving_default* 
`Z
VARIABLE_VALUEconv2d_40/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_40/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
Ш
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_41/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_41/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

!0
"1*

!0
"1*
* 
Ш
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ц
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
/	variables
0trainable_variables
1regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEconv2d_42/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_42/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

60
71*

60
71*
* 
Ш
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_43/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_43/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

>0
?1*

>0
?1*
* 
Ш
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_44/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_44/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

F0
G1*

F0
G1*
* 
Ш
пnon_trainable_variables
░layers
▒metrics
 ▓layer_regularization_losses
│layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_45/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_45/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

N0
O1*

N0
O1*
* 
Ш
┤non_trainable_variables
╡layers
╢metrics
 ╖layer_regularization_losses
╕layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
╜layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ц
╛non_trainable_variables
┐layers
└metrics
 ┴layer_regularization_losses
┬layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ц
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
b	variables
ctrainable_variables
dregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
Ц
╚non_trainable_variables
╔layers
╩metrics
 ╦layer_regularization_losses
╠layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_14/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_14/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

o0
p1*

o0
p1*
* 
Ш
═non_trainable_variables
╬layers
╧metrics
 ╨layer_regularization_losses
╤layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
╥non_trainable_variables
╙layers
╘metrics
 ╒layer_regularization_losses
╓layer_metrics
w	variables
xtrainable_variables
yregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_15/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_15/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

~0
1*

~0
1*
* 
Ю
╫non_trainable_variables
╪layers
┘metrics
 ┌layer_regularization_losses
█layer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
r
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14*

▄0
▌1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

▐total

▀count
р	variables
с	keras_api*
M

тtotal

уcount
ф
_fn_kwargs
х	variables
ц	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

▐0
▀1*

р	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

т0
у1*

х	variables*
Г}
VARIABLE_VALUEAdam/conv2d_40/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_40/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_41/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_41/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_42/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_42/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_43/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_43/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_44/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_44/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_45/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_45/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_14/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_15/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_15/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_40/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_40/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_41/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_41/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_42/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_42/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_43/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_43/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_44/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_44/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_45/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_45/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_14/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_15/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_15/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Т
serving_default_conv2d_40_inputPlaceholder*/
_output_shapes
:         00*
dtype0*$
shape:         00
ц
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_40_inputconv2d_40/kernelconv2d_40/biasconv2d_41/kernelconv2d_41/biasconv2d_42/kernelconv2d_42/biasconv2d_43/kernelconv2d_43/biasconv2d_44/kernelconv2d_44/biasconv2d_45/kernelconv2d_45/biasdense_14/kerneldense_14/biasdense_15/kerneldense_15/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_331930
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
▒
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_40/kernel/Read/ReadVariableOp"conv2d_40/bias/Read/ReadVariableOp$conv2d_41/kernel/Read/ReadVariableOp"conv2d_41/bias/Read/ReadVariableOp$conv2d_42/kernel/Read/ReadVariableOp"conv2d_42/bias/Read/ReadVariableOp$conv2d_43/kernel/Read/ReadVariableOp"conv2d_43/bias/Read/ReadVariableOp$conv2d_44/kernel/Read/ReadVariableOp"conv2d_44/bias/Read/ReadVariableOp$conv2d_45/kernel/Read/ReadVariableOp"conv2d_45/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_40/kernel/m/Read/ReadVariableOp)Adam/conv2d_40/bias/m/Read/ReadVariableOp+Adam/conv2d_41/kernel/m/Read/ReadVariableOp)Adam/conv2d_41/bias/m/Read/ReadVariableOp+Adam/conv2d_42/kernel/m/Read/ReadVariableOp)Adam/conv2d_42/bias/m/Read/ReadVariableOp+Adam/conv2d_43/kernel/m/Read/ReadVariableOp)Adam/conv2d_43/bias/m/Read/ReadVariableOp+Adam/conv2d_44/kernel/m/Read/ReadVariableOp)Adam/conv2d_44/bias/m/Read/ReadVariableOp+Adam/conv2d_45/kernel/m/Read/ReadVariableOp)Adam/conv2d_45/bias/m/Read/ReadVariableOp*Adam/dense_14/kernel/m/Read/ReadVariableOp(Adam/dense_14/bias/m/Read/ReadVariableOp*Adam/dense_15/kernel/m/Read/ReadVariableOp(Adam/dense_15/bias/m/Read/ReadVariableOp+Adam/conv2d_40/kernel/v/Read/ReadVariableOp)Adam/conv2d_40/bias/v/Read/ReadVariableOp+Adam/conv2d_41/kernel/v/Read/ReadVariableOp)Adam/conv2d_41/bias/v/Read/ReadVariableOp+Adam/conv2d_42/kernel/v/Read/ReadVariableOp)Adam/conv2d_42/bias/v/Read/ReadVariableOp+Adam/conv2d_43/kernel/v/Read/ReadVariableOp)Adam/conv2d_43/bias/v/Read/ReadVariableOp+Adam/conv2d_44/kernel/v/Read/ReadVariableOp)Adam/conv2d_44/bias/v/Read/ReadVariableOp+Adam/conv2d_45/kernel/v/Read/ReadVariableOp)Adam/conv2d_45/bias/v/Read/ReadVariableOp*Adam/dense_14/kernel/v/Read/ReadVariableOp(Adam/dense_14/bias/v/Read/ReadVariableOp*Adam/dense_15/kernel/v/Read/ReadVariableOp(Adam/dense_15/bias/v/Read/ReadVariableOpConst*F
Tin?
=2;	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__traced_save_332406
╕
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_40/kernelconv2d_40/biasconv2d_41/kernelconv2d_41/biasconv2d_42/kernelconv2d_42/biasconv2d_43/kernelconv2d_43/biasconv2d_44/kernelconv2d_44/biasconv2d_45/kernelconv2d_45/biasdense_14/kerneldense_14/biasdense_15/kerneldense_15/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_40/kernel/mAdam/conv2d_40/bias/mAdam/conv2d_41/kernel/mAdam/conv2d_41/bias/mAdam/conv2d_42/kernel/mAdam/conv2d_42/bias/mAdam/conv2d_43/kernel/mAdam/conv2d_43/bias/mAdam/conv2d_44/kernel/mAdam/conv2d_44/bias/mAdam/conv2d_45/kernel/mAdam/conv2d_45/bias/mAdam/dense_14/kernel/mAdam/dense_14/bias/mAdam/dense_15/kernel/mAdam/dense_15/bias/mAdam/conv2d_40/kernel/vAdam/conv2d_40/bias/vAdam/conv2d_41/kernel/vAdam/conv2d_41/bias/vAdam/conv2d_42/kernel/vAdam/conv2d_42/bias/vAdam/conv2d_43/kernel/vAdam/conv2d_43/bias/vAdam/conv2d_44/kernel/vAdam/conv2d_44/bias/vAdam/conv2d_45/kernel/vAdam/conv2d_45/bias/vAdam/dense_14/kernel/vAdam/dense_14/bias/vAdam/dense_15/kernel/vAdam/dense_15/bias/v*E
Tin>
<2:*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__traced_restore_332587┼ю

┌
╪
$__inference_signature_wrapper_331930
conv2d_40_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:	А

unknown_14:
identityИвStatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallconv2d_40_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_330988o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         00: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:         00
)
_user_specified_nameconv2d_40_input
╤?
щ
H__inference_sequential_7_layer_call_and_return_conditional_losses_331603
conv2d_40_input*
conv2d_40_331555:@
conv2d_40_331557:@*
conv2d_41_331560:@@
conv2d_41_331562:@+
conv2d_42_331567:@А
conv2d_42_331569:	А,
conv2d_43_331572:АА
conv2d_43_331574:	А,
conv2d_44_331577:АА
conv2d_44_331579:	А,
conv2d_45_331582:АА
conv2d_45_331584:	А#
dense_14_331591:
АА
dense_14_331593:	А"
dense_15_331597:	А
dense_15_331599:
identityИв!conv2d_40/StatefulPartitionedCallв!conv2d_41/StatefulPartitionedCallв!conv2d_42/StatefulPartitionedCallв!conv2d_43/StatefulPartitionedCallв!conv2d_44/StatefulPartitionedCallв!conv2d_45/StatefulPartitionedCallв dense_14/StatefulPartitionedCallв dense_15/StatefulPartitionedCallЕ
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCallconv2d_40_inputconv2d_40_331555conv2d_40_331557*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ..@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_40_layer_call_and_return_conditional_losses_331042а
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCall*conv2d_40/StatefulPartitionedCall:output:0conv2d_41_331560conv2d_41_331562*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,,@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_41_layer_call_and_return_conditional_losses_331059Ї
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_330997ч
dropout_21/PartitionedCallPartitionedCall)max_pooling2d_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_331071Ъ
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall#dropout_21/PartitionedCall:output:0conv2d_42_331567conv2d_42_331569*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_42_layer_call_and_return_conditional_losses_331084б
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0conv2d_43_331572conv2d_43_331574*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_43_layer_call_and_return_conditional_losses_331101б
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0conv2d_44_331577conv2d_44_331579*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_44_layer_call_and_return_conditional_losses_331118б
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0conv2d_45_331582conv2d_45_331584*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_331135ї
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_331009Ї
 max_pooling2d_22/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_331021ш
dropout_22/PartitionedCallPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_331148╪
flatten_7/PartitionedCallPartitionedCall#dropout_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_7_layer_call_and_return_conditional_losses_331156Н
 dense_14/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_14_331591dense_14_331593*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_331169р
dropout_23/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_331180Н
 dense_15/StatefulPartitionedCallStatefulPartitionedCall#dropout_23/PartitionedCall:output:0dense_15_331597dense_15_331599*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_331193x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ф
NoOpNoOp"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         00: : : : : : : : : : : : : : : : 2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:` \
/
_output_shapes
:         00
)
_user_specified_nameconv2d_40_input
№	
e
F__inference_dropout_23_layer_call_and_return_conditional_losses_332192

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
С
Б
E__inference_conv2d_43_layer_call_and_return_conditional_losses_331101

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
С
Б
E__inference_conv2d_45_layer_call_and_return_conditional_losses_331135

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_331021

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
¤
d
F__inference_dropout_22_layer_call_and_return_conditional_losses_331148

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
│
F
*__inference_flatten_7_layer_call_fn_332139

inputs
identity▒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_7_layer_call_and_return_conditional_losses_331156a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ЯD
╪
H__inference_sequential_7_layer_call_and_return_conditional_losses_331654
conv2d_40_input*
conv2d_40_331606:@
conv2d_40_331608:@*
conv2d_41_331611:@@
conv2d_41_331613:@+
conv2d_42_331618:@А
conv2d_42_331620:	А,
conv2d_43_331623:АА
conv2d_43_331625:	А,
conv2d_44_331628:АА
conv2d_44_331630:	А,
conv2d_45_331633:АА
conv2d_45_331635:	А#
dense_14_331642:
АА
dense_14_331644:	А"
dense_15_331648:	А
dense_15_331650:
identityИв!conv2d_40/StatefulPartitionedCallв!conv2d_41/StatefulPartitionedCallв!conv2d_42/StatefulPartitionedCallв!conv2d_43/StatefulPartitionedCallв!conv2d_44/StatefulPartitionedCallв!conv2d_45/StatefulPartitionedCallв dense_14/StatefulPartitionedCallв dense_15/StatefulPartitionedCallв"dropout_21/StatefulPartitionedCallв"dropout_22/StatefulPartitionedCallв"dropout_23/StatefulPartitionedCallЕ
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCallconv2d_40_inputconv2d_40_331606conv2d_40_331608*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ..@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_40_layer_call_and_return_conditional_losses_331042а
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCall*conv2d_40/StatefulPartitionedCall:output:0conv2d_41_331611conv2d_41_331613*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,,@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_41_layer_call_and_return_conditional_losses_331059Ї
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_330997ў
"dropout_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_331367в
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall+dropout_21/StatefulPartitionedCall:output:0conv2d_42_331618conv2d_42_331620*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_42_layer_call_and_return_conditional_losses_331084б
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0conv2d_43_331623conv2d_43_331625*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_43_layer_call_and_return_conditional_losses_331101б
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0conv2d_44_331628conv2d_44_331630*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_44_layer_call_and_return_conditional_losses_331118б
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0conv2d_45_331633conv2d_45_331635*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_331135ї
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_331009Ї
 max_pooling2d_22/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_331021Э
"dropout_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0#^dropout_21/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_331304р
flatten_7/PartitionedCallPartitionedCall+dropout_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_7_layer_call_and_return_conditional_losses_331156Н
 dense_14/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_14_331642dense_14_331644*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_331169Х
"dropout_23/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0#^dropout_22/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_331265Х
 dense_15/StatefulPartitionedCallStatefulPartitionedCall+dropout_23/StatefulPartitionedCall:output:0dense_15_331648dense_15_331650*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_331193x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╙
NoOpNoOp"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         00: : : : : : : : : : : : : : : : 2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2H
"dropout_21/StatefulPartitionedCall"dropout_21/StatefulPartitionedCall2H
"dropout_22/StatefulPartitionedCall"dropout_22/StatefulPartitionedCall2H
"dropout_23/StatefulPartitionedCall"dropout_23/StatefulPartitionedCall:` \
/
_output_shapes
:         00
)
_user_specified_nameconv2d_40_input
з

°
D__inference_dense_14_layer_call_and_return_conditional_losses_332165

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▌
d
F__inference_dropout_23_layer_call_and_return_conditional_losses_332180

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
С
Б
E__inference_conv2d_44_layer_call_and_return_conditional_losses_332067

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
С
Б
E__inference_conv2d_43_layer_call_and_return_conditional_losses_332047

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
хr
╝
__inference__traced_save_332406
file_prefix/
+savev2_conv2d_40_kernel_read_readvariableop-
)savev2_conv2d_40_bias_read_readvariableop/
+savev2_conv2d_41_kernel_read_readvariableop-
)savev2_conv2d_41_bias_read_readvariableop/
+savev2_conv2d_42_kernel_read_readvariableop-
)savev2_conv2d_42_bias_read_readvariableop/
+savev2_conv2d_43_kernel_read_readvariableop-
)savev2_conv2d_43_bias_read_readvariableop/
+savev2_conv2d_44_kernel_read_readvariableop-
)savev2_conv2d_44_bias_read_readvariableop/
+savev2_conv2d_45_kernel_read_readvariableop-
)savev2_conv2d_45_bias_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_40_kernel_m_read_readvariableop4
0savev2_adam_conv2d_40_bias_m_read_readvariableop6
2savev2_adam_conv2d_41_kernel_m_read_readvariableop4
0savev2_adam_conv2d_41_bias_m_read_readvariableop6
2savev2_adam_conv2d_42_kernel_m_read_readvariableop4
0savev2_adam_conv2d_42_bias_m_read_readvariableop6
2savev2_adam_conv2d_43_kernel_m_read_readvariableop4
0savev2_adam_conv2d_43_bias_m_read_readvariableop6
2savev2_adam_conv2d_44_kernel_m_read_readvariableop4
0savev2_adam_conv2d_44_bias_m_read_readvariableop6
2savev2_adam_conv2d_45_kernel_m_read_readvariableop4
0savev2_adam_conv2d_45_bias_m_read_readvariableop5
1savev2_adam_dense_14_kernel_m_read_readvariableop3
/savev2_adam_dense_14_bias_m_read_readvariableop5
1savev2_adam_dense_15_kernel_m_read_readvariableop3
/savev2_adam_dense_15_bias_m_read_readvariableop6
2savev2_adam_conv2d_40_kernel_v_read_readvariableop4
0savev2_adam_conv2d_40_bias_v_read_readvariableop6
2savev2_adam_conv2d_41_kernel_v_read_readvariableop4
0savev2_adam_conv2d_41_bias_v_read_readvariableop6
2savev2_adam_conv2d_42_kernel_v_read_readvariableop4
0savev2_adam_conv2d_42_bias_v_read_readvariableop6
2savev2_adam_conv2d_43_kernel_v_read_readvariableop4
0savev2_adam_conv2d_43_bias_v_read_readvariableop6
2savev2_adam_conv2d_44_kernel_v_read_readvariableop4
0savev2_adam_conv2d_44_bias_v_read_readvariableop6
2savev2_adam_conv2d_45_kernel_v_read_readvariableop4
0savev2_adam_conv2d_45_bias_v_read_readvariableop5
1savev2_adam_dense_14_kernel_v_read_readvariableop3
/savev2_adam_dense_14_bias_v_read_readvariableop5
1savev2_adam_dense_15_kernel_v_read_readvariableop3
/savev2_adam_dense_15_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ч 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*└
value╢B│:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHт
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*З
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ╒
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_40_kernel_read_readvariableop)savev2_conv2d_40_bias_read_readvariableop+savev2_conv2d_41_kernel_read_readvariableop)savev2_conv2d_41_bias_read_readvariableop+savev2_conv2d_42_kernel_read_readvariableop)savev2_conv2d_42_bias_read_readvariableop+savev2_conv2d_43_kernel_read_readvariableop)savev2_conv2d_43_bias_read_readvariableop+savev2_conv2d_44_kernel_read_readvariableop)savev2_conv2d_44_bias_read_readvariableop+savev2_conv2d_45_kernel_read_readvariableop)savev2_conv2d_45_bias_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_40_kernel_m_read_readvariableop0savev2_adam_conv2d_40_bias_m_read_readvariableop2savev2_adam_conv2d_41_kernel_m_read_readvariableop0savev2_adam_conv2d_41_bias_m_read_readvariableop2savev2_adam_conv2d_42_kernel_m_read_readvariableop0savev2_adam_conv2d_42_bias_m_read_readvariableop2savev2_adam_conv2d_43_kernel_m_read_readvariableop0savev2_adam_conv2d_43_bias_m_read_readvariableop2savev2_adam_conv2d_44_kernel_m_read_readvariableop0savev2_adam_conv2d_44_bias_m_read_readvariableop2savev2_adam_conv2d_45_kernel_m_read_readvariableop0savev2_adam_conv2d_45_bias_m_read_readvariableop1savev2_adam_dense_14_kernel_m_read_readvariableop/savev2_adam_dense_14_bias_m_read_readvariableop1savev2_adam_dense_15_kernel_m_read_readvariableop/savev2_adam_dense_15_bias_m_read_readvariableop2savev2_adam_conv2d_40_kernel_v_read_readvariableop0savev2_adam_conv2d_40_bias_v_read_readvariableop2savev2_adam_conv2d_41_kernel_v_read_readvariableop0savev2_adam_conv2d_41_bias_v_read_readvariableop2savev2_adam_conv2d_42_kernel_v_read_readvariableop0savev2_adam_conv2d_42_bias_v_read_readvariableop2savev2_adam_conv2d_43_kernel_v_read_readvariableop0savev2_adam_conv2d_43_bias_v_read_readvariableop2savev2_adam_conv2d_44_kernel_v_read_readvariableop0savev2_adam_conv2d_44_bias_v_read_readvariableop2savev2_adam_conv2d_45_kernel_v_read_readvariableop0savev2_adam_conv2d_45_bias_v_read_readvariableop1savev2_adam_dense_14_kernel_v_read_readvariableop/savev2_adam_dense_14_bias_v_read_readvariableop1savev2_adam_dense_15_kernel_v_read_readvariableop/savev2_adam_dense_15_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *H
dtypes>
<2:	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*ш
_input_shapes╓
╙: :@:@:@@:@:@А:А:АА:А:АА:А:АА:А:
АА:А:	А:: : : : : : : : : :@:@:@@:@:@А:А:АА:А:АА:А:АА:А:
АА:А:	А::@:@:@@:@:@А:А:АА:А:АА:А:АА:А:
АА:А:	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.	*
(
_output_shapes
:АА:!


_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:. *
(
_output_shapes
:АА:!!

_output_shapes	
:А:."*
(
_output_shapes
:АА:!#
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
АА:!'

_output_shapes	
:А:%(!

_output_shapes
:	А: )

_output_shapes
::,*(
&
_output_shapes
:@: +

_output_shapes
:@:,,(
&
_output_shapes
:@@: -

_output_shapes
:@:-.)
'
_output_shapes
:@А:!/

_output_shapes	
:А:.0*
(
_output_shapes
:АА:!1

_output_shapes	
:А:.2*
(
_output_shapes
:АА:!3

_output_shapes	
:А:.4*
(
_output_shapes
:АА:!5

_output_shapes	
:А:&6"
 
_output_shapes
:
АА:!7

_output_shapes	
:А:%8!

_output_shapes
:	А: 9

_output_shapes
:::

_output_shapes
: 
К
с
-__inference_sequential_7_layer_call_fn_331552
conv2d_40_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:	А

unknown_14:
identityИвStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallconv2d_40_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_331480o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         00: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:         00
)
_user_specified_nameconv2d_40_input
▌
d
F__inference_dropout_23_layer_call_and_return_conditional_losses_331180

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
║
M
1__inference_max_pooling2d_20_layer_call_fn_331975

inputs
identity┌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_330997Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Н
А
E__inference_conv2d_42_layer_call_and_return_conditional_losses_331084

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
я
╪
-__inference_sequential_7_layer_call_fn_331734

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:	А

unknown_14:
identityИвStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_331480o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         00: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
ь
Я
*__inference_conv2d_40_layer_call_fn_331939

inputs!
unknown:@
	unknown_0:@
identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ..@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_40_layer_call_and_return_conditional_losses_331042w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ..@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         00: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_332097

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
К
с
-__inference_sequential_7_layer_call_fn_331235
conv2d_40_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:	А

unknown_14:
identityИвStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallconv2d_40_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_331200o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         00: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:         00
)
_user_specified_nameconv2d_40_input
╒S
ю
H__inference_sequential_7_layer_call_and_return_conditional_losses_331802

inputsB
(conv2d_40_conv2d_readvariableop_resource:@7
)conv2d_40_biasadd_readvariableop_resource:@B
(conv2d_41_conv2d_readvariableop_resource:@@7
)conv2d_41_biasadd_readvariableop_resource:@C
(conv2d_42_conv2d_readvariableop_resource:@А8
)conv2d_42_biasadd_readvariableop_resource:	АD
(conv2d_43_conv2d_readvariableop_resource:АА8
)conv2d_43_biasadd_readvariableop_resource:	АD
(conv2d_44_conv2d_readvariableop_resource:АА8
)conv2d_44_biasadd_readvariableop_resource:	АD
(conv2d_45_conv2d_readvariableop_resource:АА8
)conv2d_45_biasadd_readvariableop_resource:	А;
'dense_14_matmul_readvariableop_resource:
АА7
(dense_14_biasadd_readvariableop_resource:	А:
'dense_15_matmul_readvariableop_resource:	А6
(dense_15_biasadd_readvariableop_resource:
identityИв conv2d_40/BiasAdd/ReadVariableOpвconv2d_40/Conv2D/ReadVariableOpв conv2d_41/BiasAdd/ReadVariableOpвconv2d_41/Conv2D/ReadVariableOpв conv2d_42/BiasAdd/ReadVariableOpвconv2d_42/Conv2D/ReadVariableOpв conv2d_43/BiasAdd/ReadVariableOpвconv2d_43/Conv2D/ReadVariableOpв conv2d_44/BiasAdd/ReadVariableOpвconv2d_44/Conv2D/ReadVariableOpв conv2d_45/BiasAdd/ReadVariableOpвconv2d_45/Conv2D/ReadVariableOpвdense_14/BiasAdd/ReadVariableOpвdense_14/MatMul/ReadVariableOpвdense_15/BiasAdd/ReadVariableOpвdense_15/MatMul/ReadVariableOpР
conv2d_40/Conv2D/ReadVariableOpReadVariableOp(conv2d_40_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0о
conv2d_40/Conv2DConv2Dinputs'conv2d_40/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ..@*
paddingVALID*
strides
Ж
 conv2d_40/BiasAdd/ReadVariableOpReadVariableOp)conv2d_40_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_40/BiasAddBiasAddconv2d_40/Conv2D:output:0(conv2d_40/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ..@l
conv2d_40/ReluReluconv2d_40/BiasAdd:output:0*
T0*/
_output_shapes
:         ..@Р
conv2d_41/Conv2D/ReadVariableOpReadVariableOp(conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0─
conv2d_41/Conv2DConv2Dconv2d_40/Relu:activations:0'conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,@*
paddingVALID*
strides
Ж
 conv2d_41/BiasAdd/ReadVariableOpReadVariableOp)conv2d_41_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_41/BiasAddBiasAddconv2d_41/Conv2D:output:0(conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,@l
conv2d_41/ReluReluconv2d_41/BiasAdd:output:0*
T0*/
_output_shapes
:         ,,@о
max_pooling2d_20/MaxPoolMaxPoolconv2d_41/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
|
dropout_21/IdentityIdentity!max_pooling2d_20/MaxPool:output:0*
T0*/
_output_shapes
:         @С
conv2d_42/Conv2D/ReadVariableOpReadVariableOp(conv2d_42_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0┼
conv2d_42/Conv2DConv2Ddropout_21/Identity:output:0'conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
З
 conv2d_42/BiasAdd/ReadVariableOpReadVariableOp)conv2d_42_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_42/BiasAddBiasAddconv2d_42/Conv2D:output:0(conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аm
conv2d_42/ReluReluconv2d_42/BiasAdd:output:0*
T0*0
_output_shapes
:         АТ
conv2d_43/Conv2D/ReadVariableOpReadVariableOp(conv2d_43_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0┼
conv2d_43/Conv2DConv2Dconv2d_42/Relu:activations:0'conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
З
 conv2d_43/BiasAdd/ReadVariableOpReadVariableOp)conv2d_43_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_43/BiasAddBiasAddconv2d_43/Conv2D:output:0(conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аm
conv2d_43/ReluReluconv2d_43/BiasAdd:output:0*
T0*0
_output_shapes
:         АТ
conv2d_44/Conv2D/ReadVariableOpReadVariableOp(conv2d_44_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0┼
conv2d_44/Conv2DConv2Dconv2d_43/Relu:activations:0'conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
З
 conv2d_44/BiasAdd/ReadVariableOpReadVariableOp)conv2d_44_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_44/BiasAddBiasAddconv2d_44/Conv2D:output:0(conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аm
conv2d_44/ReluReluconv2d_44/BiasAdd:output:0*
T0*0
_output_shapes
:         АТ
conv2d_45/Conv2D/ReadVariableOpReadVariableOp(conv2d_45_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0┼
conv2d_45/Conv2DConv2Dconv2d_44/Relu:activations:0'conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
З
 conv2d_45/BiasAdd/ReadVariableOpReadVariableOp)conv2d_45_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_45/BiasAddBiasAddconv2d_45/Conv2D:output:0(conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аm
conv2d_45/ReluReluconv2d_45/BiasAdd:output:0*
T0*0
_output_shapes
:         Ап
max_pooling2d_21/MaxPoolMaxPoolconv2d_45/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
┤
max_pooling2d_22/MaxPoolMaxPool!max_pooling2d_21/MaxPool:output:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
}
dropout_22/IdentityIdentity!max_pooling2d_22/MaxPool:output:0*
T0*0
_output_shapes
:         А`
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"     	  З
flatten_7/ReshapeReshapedropout_22/Identity:output:0flatten_7/Const:output:0*
T0*(
_output_shapes
:         АИ
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Р
dense_14/MatMulMatMulflatten_7/Reshape:output:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЕ
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аc
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*(
_output_shapes
:         Аo
dropout_23/IdentityIdentitydense_14/Relu:activations:0*
T0*(
_output_shapes
:         АЗ
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0С
dense_15/MatMulMatMuldropout_23/Identity:output:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_15/SoftmaxSoftmaxdense_15/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_15/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ъ
NoOpNoOp!^conv2d_40/BiasAdd/ReadVariableOp ^conv2d_40/Conv2D/ReadVariableOp!^conv2d_41/BiasAdd/ReadVariableOp ^conv2d_41/Conv2D/ReadVariableOp!^conv2d_42/BiasAdd/ReadVariableOp ^conv2d_42/Conv2D/ReadVariableOp!^conv2d_43/BiasAdd/ReadVariableOp ^conv2d_43/Conv2D/ReadVariableOp!^conv2d_44/BiasAdd/ReadVariableOp ^conv2d_44/Conv2D/ReadVariableOp!^conv2d_45/BiasAdd/ReadVariableOp ^conv2d_45/Conv2D/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         00: : : : : : : : : : : : : : : : 2D
 conv2d_40/BiasAdd/ReadVariableOp conv2d_40/BiasAdd/ReadVariableOp2B
conv2d_40/Conv2D/ReadVariableOpconv2d_40/Conv2D/ReadVariableOp2D
 conv2d_41/BiasAdd/ReadVariableOp conv2d_41/BiasAdd/ReadVariableOp2B
conv2d_41/Conv2D/ReadVariableOpconv2d_41/Conv2D/ReadVariableOp2D
 conv2d_42/BiasAdd/ReadVariableOp conv2d_42/BiasAdd/ReadVariableOp2B
conv2d_42/Conv2D/ReadVariableOpconv2d_42/Conv2D/ReadVariableOp2D
 conv2d_43/BiasAdd/ReadVariableOp conv2d_43/BiasAdd/ReadVariableOp2B
conv2d_43/Conv2D/ReadVariableOpconv2d_43/Conv2D/ReadVariableOp2D
 conv2d_44/BiasAdd/ReadVariableOp conv2d_44/BiasAdd/ReadVariableOp2B
conv2d_44/Conv2D/ReadVariableOpconv2d_44/Conv2D/ReadVariableOp2D
 conv2d_45/BiasAdd/ReadVariableOp conv2d_45/BiasAdd/ReadVariableOp2B
conv2d_45/Conv2D/ReadVariableOpconv2d_45/Conv2D/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
╝

e
F__inference_dropout_22_layer_call_and_return_conditional_losses_331304

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Е
■
E__inference_conv2d_40_layer_call_and_return_conditional_losses_331950

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ..@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ..@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ..@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         ..@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         00: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
┼
Ч
)__inference_dense_15_layer_call_fn_332201

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCall┘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_331193o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╢?
р
H__inference_sequential_7_layer_call_and_return_conditional_losses_331200

inputs*
conv2d_40_331043:@
conv2d_40_331045:@*
conv2d_41_331060:@@
conv2d_41_331062:@+
conv2d_42_331085:@А
conv2d_42_331087:	А,
conv2d_43_331102:АА
conv2d_43_331104:	А,
conv2d_44_331119:АА
conv2d_44_331121:	А,
conv2d_45_331136:АА
conv2d_45_331138:	А#
dense_14_331170:
АА
dense_14_331172:	А"
dense_15_331194:	А
dense_15_331196:
identityИв!conv2d_40/StatefulPartitionedCallв!conv2d_41/StatefulPartitionedCallв!conv2d_42/StatefulPartitionedCallв!conv2d_43/StatefulPartitionedCallв!conv2d_44/StatefulPartitionedCallв!conv2d_45/StatefulPartitionedCallв dense_14/StatefulPartitionedCallв dense_15/StatefulPartitionedCall№
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_40_331043conv2d_40_331045*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ..@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_40_layer_call_and_return_conditional_losses_331042а
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCall*conv2d_40/StatefulPartitionedCall:output:0conv2d_41_331060conv2d_41_331062*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,,@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_41_layer_call_and_return_conditional_losses_331059Ї
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_330997ч
dropout_21/PartitionedCallPartitionedCall)max_pooling2d_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_331071Ъ
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall#dropout_21/PartitionedCall:output:0conv2d_42_331085conv2d_42_331087*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_42_layer_call_and_return_conditional_losses_331084б
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0conv2d_43_331102conv2d_43_331104*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_43_layer_call_and_return_conditional_losses_331101б
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0conv2d_44_331119conv2d_44_331121*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_44_layer_call_and_return_conditional_losses_331118б
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0conv2d_45_331136conv2d_45_331138*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_331135ї
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_331009Ї
 max_pooling2d_22/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_331021ш
dropout_22/PartitionedCallPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_331148╪
flatten_7/PartitionedCallPartitionedCall#dropout_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_7_layer_call_and_return_conditional_losses_331156Н
 dense_14/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_14_331170dense_14_331172*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_331169р
dropout_23/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_331180Н
 dense_15/StatefulPartitionedCallStatefulPartitionedCall#dropout_23/PartitionedCall:output:0dense_15_331194dense_15_331196*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_331193x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ф
NoOpNoOp"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         00: : : : : : : : : : : : : : : : 2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
№	
e
F__inference_dropout_23_layer_call_and_return_conditional_losses_331265

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
∙
d
F__inference_dropout_21_layer_call_and_return_conditional_losses_331071

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         @c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ё
б
*__inference_conv2d_42_layer_call_fn_332016

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_42_layer_call_and_return_conditional_losses_331084x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ДD
╧
H__inference_sequential_7_layer_call_and_return_conditional_losses_331480

inputs*
conv2d_40_331432:@
conv2d_40_331434:@*
conv2d_41_331437:@@
conv2d_41_331439:@+
conv2d_42_331444:@А
conv2d_42_331446:	А,
conv2d_43_331449:АА
conv2d_43_331451:	А,
conv2d_44_331454:АА
conv2d_44_331456:	А,
conv2d_45_331459:АА
conv2d_45_331461:	А#
dense_14_331468:
АА
dense_14_331470:	А"
dense_15_331474:	А
dense_15_331476:
identityИв!conv2d_40/StatefulPartitionedCallв!conv2d_41/StatefulPartitionedCallв!conv2d_42/StatefulPartitionedCallв!conv2d_43/StatefulPartitionedCallв!conv2d_44/StatefulPartitionedCallв!conv2d_45/StatefulPartitionedCallв dense_14/StatefulPartitionedCallв dense_15/StatefulPartitionedCallв"dropout_21/StatefulPartitionedCallв"dropout_22/StatefulPartitionedCallв"dropout_23/StatefulPartitionedCall№
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_40_331432conv2d_40_331434*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ..@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_40_layer_call_and_return_conditional_losses_331042а
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCall*conv2d_40/StatefulPartitionedCall:output:0conv2d_41_331437conv2d_41_331439*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,,@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_41_layer_call_and_return_conditional_losses_331059Ї
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_330997ў
"dropout_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_331367в
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall+dropout_21/StatefulPartitionedCall:output:0conv2d_42_331444conv2d_42_331446*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_42_layer_call_and_return_conditional_losses_331084б
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0conv2d_43_331449conv2d_43_331451*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_43_layer_call_and_return_conditional_losses_331101б
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0conv2d_44_331454conv2d_44_331456*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_44_layer_call_and_return_conditional_losses_331118б
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0conv2d_45_331459conv2d_45_331461*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_331135ї
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_331009Ї
 max_pooling2d_22/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_331021Э
"dropout_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0#^dropout_21/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_331304р
flatten_7/PartitionedCallPartitionedCall+dropout_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_7_layer_call_and_return_conditional_losses_331156Н
 dense_14/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_14_331468dense_14_331470*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_331169Х
"dropout_23/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0#^dropout_22/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_331265Х
 dense_15/StatefulPartitionedCallStatefulPartitionedCall+dropout_23/StatefulPartitionedCall:output:0dense_15_331474dense_15_331476*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_331193x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╙
NoOpNoOp"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         00: : : : : : : : : : : : : : : : 2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2H
"dropout_21/StatefulPartitionedCall"dropout_21/StatefulPartitionedCall2H
"dropout_22/StatefulPartitionedCall"dropout_22/StatefulPartitionedCall2H
"dropout_23/StatefulPartitionedCall"dropout_23/StatefulPartitionedCall:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
Ч
d
+__inference_dropout_22_layer_call_fn_332117

inputs
identityИвStatefulPartitionedCall╩
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_331304x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Е
■
E__inference_conv2d_40_layer_call_and_return_conditional_losses_331042

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ..@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ..@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ..@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         ..@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         00: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
д

Ў
D__inference_dense_15_layer_call_and_return_conditional_losses_332212

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Е
■
E__inference_conv2d_41_layer_call_and_return_conditional_losses_331970

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ,,@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         ,,@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ..@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ..@
 
_user_specified_nameinputs
є
в
*__inference_conv2d_45_layer_call_fn_332076

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_331135x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
е
G
+__inference_dropout_23_layer_call_fn_332170

inputs
identity▓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_331180a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
У
d
+__inference_dropout_21_layer_call_fn_331990

inputs
identityИвStatefulPartitionedCall╔
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_331367w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
║
M
1__inference_max_pooling2d_22_layer_call_fn_332102

inputs
identity┌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_331021Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Н
А
E__inference_conv2d_42_layer_call_and_return_conditional_losses_332027

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
∙
d
F__inference_dropout_21_layer_call_and_return_conditional_losses_331995

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         @c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Уg
Ё
!__inference__wrapped_model_330988
conv2d_40_inputO
5sequential_7_conv2d_40_conv2d_readvariableop_resource:@D
6sequential_7_conv2d_40_biasadd_readvariableop_resource:@O
5sequential_7_conv2d_41_conv2d_readvariableop_resource:@@D
6sequential_7_conv2d_41_biasadd_readvariableop_resource:@P
5sequential_7_conv2d_42_conv2d_readvariableop_resource:@АE
6sequential_7_conv2d_42_biasadd_readvariableop_resource:	АQ
5sequential_7_conv2d_43_conv2d_readvariableop_resource:ААE
6sequential_7_conv2d_43_biasadd_readvariableop_resource:	АQ
5sequential_7_conv2d_44_conv2d_readvariableop_resource:ААE
6sequential_7_conv2d_44_biasadd_readvariableop_resource:	АQ
5sequential_7_conv2d_45_conv2d_readvariableop_resource:ААE
6sequential_7_conv2d_45_biasadd_readvariableop_resource:	АH
4sequential_7_dense_14_matmul_readvariableop_resource:
ААD
5sequential_7_dense_14_biasadd_readvariableop_resource:	АG
4sequential_7_dense_15_matmul_readvariableop_resource:	АC
5sequential_7_dense_15_biasadd_readvariableop_resource:
identityИв-sequential_7/conv2d_40/BiasAdd/ReadVariableOpв,sequential_7/conv2d_40/Conv2D/ReadVariableOpв-sequential_7/conv2d_41/BiasAdd/ReadVariableOpв,sequential_7/conv2d_41/Conv2D/ReadVariableOpв-sequential_7/conv2d_42/BiasAdd/ReadVariableOpв,sequential_7/conv2d_42/Conv2D/ReadVariableOpв-sequential_7/conv2d_43/BiasAdd/ReadVariableOpв,sequential_7/conv2d_43/Conv2D/ReadVariableOpв-sequential_7/conv2d_44/BiasAdd/ReadVariableOpв,sequential_7/conv2d_44/Conv2D/ReadVariableOpв-sequential_7/conv2d_45/BiasAdd/ReadVariableOpв,sequential_7/conv2d_45/Conv2D/ReadVariableOpв,sequential_7/dense_14/BiasAdd/ReadVariableOpв+sequential_7/dense_14/MatMul/ReadVariableOpв,sequential_7/dense_15/BiasAdd/ReadVariableOpв+sequential_7/dense_15/MatMul/ReadVariableOpк
,sequential_7/conv2d_40/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_40_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0╤
sequential_7/conv2d_40/Conv2DConv2Dconv2d_40_input4sequential_7/conv2d_40/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ..@*
paddingVALID*
strides
а
-sequential_7/conv2d_40/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_40_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
sequential_7/conv2d_40/BiasAddBiasAdd&sequential_7/conv2d_40/Conv2D:output:05sequential_7/conv2d_40/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ..@Ж
sequential_7/conv2d_40/ReluRelu'sequential_7/conv2d_40/BiasAdd:output:0*
T0*/
_output_shapes
:         ..@к
,sequential_7/conv2d_41/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0ы
sequential_7/conv2d_41/Conv2DConv2D)sequential_7/conv2d_40/Relu:activations:04sequential_7/conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,@*
paddingVALID*
strides
а
-sequential_7/conv2d_41/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_41_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
sequential_7/conv2d_41/BiasAddBiasAdd&sequential_7/conv2d_41/Conv2D:output:05sequential_7/conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,@Ж
sequential_7/conv2d_41/ReluRelu'sequential_7/conv2d_41/BiasAdd:output:0*
T0*/
_output_shapes
:         ,,@╚
%sequential_7/max_pooling2d_20/MaxPoolMaxPool)sequential_7/conv2d_41/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Ц
 sequential_7/dropout_21/IdentityIdentity.sequential_7/max_pooling2d_20/MaxPool:output:0*
T0*/
_output_shapes
:         @л
,sequential_7/conv2d_42/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_42_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0ь
sequential_7/conv2d_42/Conv2DConv2D)sequential_7/dropout_21/Identity:output:04sequential_7/conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
б
-sequential_7/conv2d_42/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_42_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0├
sequential_7/conv2d_42/BiasAddBiasAdd&sequential_7/conv2d_42/Conv2D:output:05sequential_7/conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЗ
sequential_7/conv2d_42/ReluRelu'sequential_7/conv2d_42/BiasAdd:output:0*
T0*0
_output_shapes
:         Ам
,sequential_7/conv2d_43/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_43_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ь
sequential_7/conv2d_43/Conv2DConv2D)sequential_7/conv2d_42/Relu:activations:04sequential_7/conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
б
-sequential_7/conv2d_43/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_43_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0├
sequential_7/conv2d_43/BiasAddBiasAdd&sequential_7/conv2d_43/Conv2D:output:05sequential_7/conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЗ
sequential_7/conv2d_43/ReluRelu'sequential_7/conv2d_43/BiasAdd:output:0*
T0*0
_output_shapes
:         Ам
,sequential_7/conv2d_44/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_44_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ь
sequential_7/conv2d_44/Conv2DConv2D)sequential_7/conv2d_43/Relu:activations:04sequential_7/conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
б
-sequential_7/conv2d_44/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_44_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0├
sequential_7/conv2d_44/BiasAddBiasAdd&sequential_7/conv2d_44/Conv2D:output:05sequential_7/conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЗ
sequential_7/conv2d_44/ReluRelu'sequential_7/conv2d_44/BiasAdd:output:0*
T0*0
_output_shapes
:         Ам
,sequential_7/conv2d_45/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_45_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ь
sequential_7/conv2d_45/Conv2DConv2D)sequential_7/conv2d_44/Relu:activations:04sequential_7/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
б
-sequential_7/conv2d_45/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_45_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0├
sequential_7/conv2d_45/BiasAddBiasAdd&sequential_7/conv2d_45/Conv2D:output:05sequential_7/conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЗ
sequential_7/conv2d_45/ReluRelu'sequential_7/conv2d_45/BiasAdd:output:0*
T0*0
_output_shapes
:         А╔
%sequential_7/max_pooling2d_21/MaxPoolMaxPool)sequential_7/conv2d_45/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
╬
%sequential_7/max_pooling2d_22/MaxPoolMaxPool.sequential_7/max_pooling2d_21/MaxPool:output:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Ч
 sequential_7/dropout_22/IdentityIdentity.sequential_7/max_pooling2d_22/MaxPool:output:0*
T0*0
_output_shapes
:         Аm
sequential_7/flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"     	  о
sequential_7/flatten_7/ReshapeReshape)sequential_7/dropout_22/Identity:output:0%sequential_7/flatten_7/Const:output:0*
T0*(
_output_shapes
:         Ав
+sequential_7/dense_14/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_14_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╖
sequential_7/dense_14/MatMulMatMul'sequential_7/flatten_7/Reshape:output:03sequential_7/dense_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЯ
,sequential_7/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_14_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╣
sequential_7/dense_14/BiasAddBiasAdd&sequential_7/dense_14/MatMul:product:04sequential_7/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А}
sequential_7/dense_14/ReluRelu&sequential_7/dense_14/BiasAdd:output:0*
T0*(
_output_shapes
:         АЙ
 sequential_7/dropout_23/IdentityIdentity(sequential_7/dense_14/Relu:activations:0*
T0*(
_output_shapes
:         Аб
+sequential_7/dense_15/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_15_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0╕
sequential_7/dense_15/MatMulMatMul)sequential_7/dropout_23/Identity:output:03sequential_7/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ю
,sequential_7/dense_15/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╕
sequential_7/dense_15/BiasAddBiasAdd&sequential_7/dense_15/MatMul:product:04sequential_7/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
sequential_7/dense_15/SoftmaxSoftmax&sequential_7/dense_15/BiasAdd:output:0*
T0*'
_output_shapes
:         v
IdentityIdentity'sequential_7/dense_15/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ║
NoOpNoOp.^sequential_7/conv2d_40/BiasAdd/ReadVariableOp-^sequential_7/conv2d_40/Conv2D/ReadVariableOp.^sequential_7/conv2d_41/BiasAdd/ReadVariableOp-^sequential_7/conv2d_41/Conv2D/ReadVariableOp.^sequential_7/conv2d_42/BiasAdd/ReadVariableOp-^sequential_7/conv2d_42/Conv2D/ReadVariableOp.^sequential_7/conv2d_43/BiasAdd/ReadVariableOp-^sequential_7/conv2d_43/Conv2D/ReadVariableOp.^sequential_7/conv2d_44/BiasAdd/ReadVariableOp-^sequential_7/conv2d_44/Conv2D/ReadVariableOp.^sequential_7/conv2d_45/BiasAdd/ReadVariableOp-^sequential_7/conv2d_45/Conv2D/ReadVariableOp-^sequential_7/dense_14/BiasAdd/ReadVariableOp,^sequential_7/dense_14/MatMul/ReadVariableOp-^sequential_7/dense_15/BiasAdd/ReadVariableOp,^sequential_7/dense_15/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         00: : : : : : : : : : : : : : : : 2^
-sequential_7/conv2d_40/BiasAdd/ReadVariableOp-sequential_7/conv2d_40/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_40/Conv2D/ReadVariableOp,sequential_7/conv2d_40/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_41/BiasAdd/ReadVariableOp-sequential_7/conv2d_41/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_41/Conv2D/ReadVariableOp,sequential_7/conv2d_41/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_42/BiasAdd/ReadVariableOp-sequential_7/conv2d_42/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_42/Conv2D/ReadVariableOp,sequential_7/conv2d_42/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_43/BiasAdd/ReadVariableOp-sequential_7/conv2d_43/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_43/Conv2D/ReadVariableOp,sequential_7/conv2d_43/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_44/BiasAdd/ReadVariableOp-sequential_7/conv2d_44/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_44/Conv2D/ReadVariableOp,sequential_7/conv2d_44/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_45/BiasAdd/ReadVariableOp-sequential_7/conv2d_45/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_45/Conv2D/ReadVariableOp,sequential_7/conv2d_45/Conv2D/ReadVariableOp2\
,sequential_7/dense_14/BiasAdd/ReadVariableOp,sequential_7/dense_14/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_14/MatMul/ReadVariableOp+sequential_7/dense_14/MatMul/ReadVariableOp2\
,sequential_7/dense_15/BiasAdd/ReadVariableOp,sequential_7/dense_15/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_15/MatMul/ReadVariableOp+sequential_7/dense_15/MatMul/ReadVariableOp:` \
/
_output_shapes
:         00
)
_user_specified_nameconv2d_40_input
╔
a
E__inference_flatten_7_layer_call_and_return_conditional_losses_332145

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     	  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╔
Щ
)__inference_dense_14_layer_call_fn_332154

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_331169p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┼
G
+__inference_dropout_22_layer_call_fn_332112

inputs
identity║
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_331148i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
д

Ў
D__inference_dense_15_layer_call_and_return_conditional_losses_331193

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Е
■
E__inference_conv2d_41_layer_call_and_return_conditional_losses_331059

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ,,@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         ,,@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ..@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ..@
 
_user_specified_nameinputs
Яk
ю
H__inference_sequential_7_layer_call_and_return_conditional_losses_331891

inputsB
(conv2d_40_conv2d_readvariableop_resource:@7
)conv2d_40_biasadd_readvariableop_resource:@B
(conv2d_41_conv2d_readvariableop_resource:@@7
)conv2d_41_biasadd_readvariableop_resource:@C
(conv2d_42_conv2d_readvariableop_resource:@А8
)conv2d_42_biasadd_readvariableop_resource:	АD
(conv2d_43_conv2d_readvariableop_resource:АА8
)conv2d_43_biasadd_readvariableop_resource:	АD
(conv2d_44_conv2d_readvariableop_resource:АА8
)conv2d_44_biasadd_readvariableop_resource:	АD
(conv2d_45_conv2d_readvariableop_resource:АА8
)conv2d_45_biasadd_readvariableop_resource:	А;
'dense_14_matmul_readvariableop_resource:
АА7
(dense_14_biasadd_readvariableop_resource:	А:
'dense_15_matmul_readvariableop_resource:	А6
(dense_15_biasadd_readvariableop_resource:
identityИв conv2d_40/BiasAdd/ReadVariableOpвconv2d_40/Conv2D/ReadVariableOpв conv2d_41/BiasAdd/ReadVariableOpвconv2d_41/Conv2D/ReadVariableOpв conv2d_42/BiasAdd/ReadVariableOpвconv2d_42/Conv2D/ReadVariableOpв conv2d_43/BiasAdd/ReadVariableOpвconv2d_43/Conv2D/ReadVariableOpв conv2d_44/BiasAdd/ReadVariableOpвconv2d_44/Conv2D/ReadVariableOpв conv2d_45/BiasAdd/ReadVariableOpвconv2d_45/Conv2D/ReadVariableOpвdense_14/BiasAdd/ReadVariableOpвdense_14/MatMul/ReadVariableOpвdense_15/BiasAdd/ReadVariableOpвdense_15/MatMul/ReadVariableOpР
conv2d_40/Conv2D/ReadVariableOpReadVariableOp(conv2d_40_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0о
conv2d_40/Conv2DConv2Dinputs'conv2d_40/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ..@*
paddingVALID*
strides
Ж
 conv2d_40/BiasAdd/ReadVariableOpReadVariableOp)conv2d_40_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_40/BiasAddBiasAddconv2d_40/Conv2D:output:0(conv2d_40/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ..@l
conv2d_40/ReluReluconv2d_40/BiasAdd:output:0*
T0*/
_output_shapes
:         ..@Р
conv2d_41/Conv2D/ReadVariableOpReadVariableOp(conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0─
conv2d_41/Conv2DConv2Dconv2d_40/Relu:activations:0'conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,@*
paddingVALID*
strides
Ж
 conv2d_41/BiasAdd/ReadVariableOpReadVariableOp)conv2d_41_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_41/BiasAddBiasAddconv2d_41/Conv2D:output:0(conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,@l
conv2d_41/ReluReluconv2d_41/BiasAdd:output:0*
T0*/
_output_shapes
:         ,,@о
max_pooling2d_20/MaxPoolMaxPoolconv2d_41/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
]
dropout_21/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Э
dropout_21/dropout/MulMul!max_pooling2d_20/MaxPool:output:0!dropout_21/dropout/Const:output:0*
T0*/
_output_shapes
:         @i
dropout_21/dropout/ShapeShape!max_pooling2d_20/MaxPool:output:0*
T0*
_output_shapes
:к
/dropout_21/dropout/random_uniform/RandomUniformRandomUniform!dropout_21/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0f
!dropout_21/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╧
dropout_21/dropout/GreaterEqualGreaterEqual8dropout_21/dropout/random_uniform/RandomUniform:output:0*dropout_21/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @Н
dropout_21/dropout/CastCast#dropout_21/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @Т
dropout_21/dropout/Mul_1Muldropout_21/dropout/Mul:z:0dropout_21/dropout/Cast:y:0*
T0*/
_output_shapes
:         @С
conv2d_42/Conv2D/ReadVariableOpReadVariableOp(conv2d_42_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0┼
conv2d_42/Conv2DConv2Ddropout_21/dropout/Mul_1:z:0'conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
З
 conv2d_42/BiasAdd/ReadVariableOpReadVariableOp)conv2d_42_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_42/BiasAddBiasAddconv2d_42/Conv2D:output:0(conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аm
conv2d_42/ReluReluconv2d_42/BiasAdd:output:0*
T0*0
_output_shapes
:         АТ
conv2d_43/Conv2D/ReadVariableOpReadVariableOp(conv2d_43_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0┼
conv2d_43/Conv2DConv2Dconv2d_42/Relu:activations:0'conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
З
 conv2d_43/BiasAdd/ReadVariableOpReadVariableOp)conv2d_43_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_43/BiasAddBiasAddconv2d_43/Conv2D:output:0(conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аm
conv2d_43/ReluReluconv2d_43/BiasAdd:output:0*
T0*0
_output_shapes
:         АТ
conv2d_44/Conv2D/ReadVariableOpReadVariableOp(conv2d_44_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0┼
conv2d_44/Conv2DConv2Dconv2d_43/Relu:activations:0'conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
З
 conv2d_44/BiasAdd/ReadVariableOpReadVariableOp)conv2d_44_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_44/BiasAddBiasAddconv2d_44/Conv2D:output:0(conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аm
conv2d_44/ReluReluconv2d_44/BiasAdd:output:0*
T0*0
_output_shapes
:         АТ
conv2d_45/Conv2D/ReadVariableOpReadVariableOp(conv2d_45_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0┼
conv2d_45/Conv2DConv2Dconv2d_44/Relu:activations:0'conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
З
 conv2d_45/BiasAdd/ReadVariableOpReadVariableOp)conv2d_45_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_45/BiasAddBiasAddconv2d_45/Conv2D:output:0(conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аm
conv2d_45/ReluReluconv2d_45/BiasAdd:output:0*
T0*0
_output_shapes
:         Ап
max_pooling2d_21/MaxPoolMaxPoolconv2d_45/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
┤
max_pooling2d_22/MaxPoolMaxPool!max_pooling2d_21/MaxPool:output:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
]
dropout_22/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Ю
dropout_22/dropout/MulMul!max_pooling2d_22/MaxPool:output:0!dropout_22/dropout/Const:output:0*
T0*0
_output_shapes
:         Аi
dropout_22/dropout/ShapeShape!max_pooling2d_22/MaxPool:output:0*
T0*
_output_shapes
:л
/dropout_22/dropout/random_uniform/RandomUniformRandomUniform!dropout_22/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0f
!dropout_22/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╨
dropout_22/dropout/GreaterEqualGreaterEqual8dropout_22/dropout/random_uniform/RandomUniform:output:0*dropout_22/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АО
dropout_22/dropout/CastCast#dropout_22/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         АУ
dropout_22/dropout/Mul_1Muldropout_22/dropout/Mul:z:0dropout_22/dropout/Cast:y:0*
T0*0
_output_shapes
:         А`
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"     	  З
flatten_7/ReshapeReshapedropout_22/dropout/Mul_1:z:0flatten_7/Const:output:0*
T0*(
_output_shapes
:         АИ
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Р
dense_14/MatMulMatMulflatten_7/Reshape:output:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЕ
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аc
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*(
_output_shapes
:         А]
dropout_23/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Р
dropout_23/dropout/MulMuldense_14/Relu:activations:0!dropout_23/dropout/Const:output:0*
T0*(
_output_shapes
:         Аc
dropout_23/dropout/ShapeShapedense_14/Relu:activations:0*
T0*
_output_shapes
:г
/dropout_23/dropout/random_uniform/RandomUniformRandomUniform!dropout_23/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0f
!dropout_23/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╚
dropout_23/dropout/GreaterEqualGreaterEqual8dropout_23/dropout/random_uniform/RandomUniform:output:0*dropout_23/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АЖ
dropout_23/dropout/CastCast#dropout_23/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЛ
dropout_23/dropout/Mul_1Muldropout_23/dropout/Mul:z:0dropout_23/dropout/Cast:y:0*
T0*(
_output_shapes
:         АЗ
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0С
dense_15/MatMulMatMuldropout_23/dropout/Mul_1:z:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_15/SoftmaxSoftmaxdense_15/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_15/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ъ
NoOpNoOp!^conv2d_40/BiasAdd/ReadVariableOp ^conv2d_40/Conv2D/ReadVariableOp!^conv2d_41/BiasAdd/ReadVariableOp ^conv2d_41/Conv2D/ReadVariableOp!^conv2d_42/BiasAdd/ReadVariableOp ^conv2d_42/Conv2D/ReadVariableOp!^conv2d_43/BiasAdd/ReadVariableOp ^conv2d_43/Conv2D/ReadVariableOp!^conv2d_44/BiasAdd/ReadVariableOp ^conv2d_44/Conv2D/ReadVariableOp!^conv2d_45/BiasAdd/ReadVariableOp ^conv2d_45/Conv2D/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         00: : : : : : : : : : : : : : : : 2D
 conv2d_40/BiasAdd/ReadVariableOp conv2d_40/BiasAdd/ReadVariableOp2B
conv2d_40/Conv2D/ReadVariableOpconv2d_40/Conv2D/ReadVariableOp2D
 conv2d_41/BiasAdd/ReadVariableOp conv2d_41/BiasAdd/ReadVariableOp2B
conv2d_41/Conv2D/ReadVariableOpconv2d_41/Conv2D/ReadVariableOp2D
 conv2d_42/BiasAdd/ReadVariableOp conv2d_42/BiasAdd/ReadVariableOp2B
conv2d_42/Conv2D/ReadVariableOpconv2d_42/Conv2D/ReadVariableOp2D
 conv2d_43/BiasAdd/ReadVariableOp conv2d_43/BiasAdd/ReadVariableOp2B
conv2d_43/Conv2D/ReadVariableOpconv2d_43/Conv2D/ReadVariableOp2D
 conv2d_44/BiasAdd/ReadVariableOp conv2d_44/BiasAdd/ReadVariableOp2B
conv2d_44/Conv2D/ReadVariableOpconv2d_44/Conv2D/ReadVariableOp2D
 conv2d_45/BiasAdd/ReadVariableOp conv2d_45/BiasAdd/ReadVariableOp2B
conv2d_45/Conv2D/ReadVariableOpconv2d_45/Conv2D/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_331009

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ь
Я
*__inference_conv2d_41_layer_call_fn_331959

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,,@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_41_layer_call_and_return_conditional_losses_331059w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ,,@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ..@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         ..@
 
_user_specified_nameinputs
С
Б
E__inference_conv2d_45_layer_call_and_return_conditional_losses_332087

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
┤

e
F__inference_dropout_21_layer_call_and_return_conditional_losses_332007

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Иф
Л$
"__inference__traced_restore_332587
file_prefix;
!assignvariableop_conv2d_40_kernel:@/
!assignvariableop_1_conv2d_40_bias:@=
#assignvariableop_2_conv2d_41_kernel:@@/
!assignvariableop_3_conv2d_41_bias:@>
#assignvariableop_4_conv2d_42_kernel:@А0
!assignvariableop_5_conv2d_42_bias:	А?
#assignvariableop_6_conv2d_43_kernel:АА0
!assignvariableop_7_conv2d_43_bias:	А?
#assignvariableop_8_conv2d_44_kernel:АА0
!assignvariableop_9_conv2d_44_bias:	А@
$assignvariableop_10_conv2d_45_kernel:АА1
"assignvariableop_11_conv2d_45_bias:	А7
#assignvariableop_12_dense_14_kernel:
АА0
!assignvariableop_13_dense_14_bias:	А6
#assignvariableop_14_dense_15_kernel:	А/
!assignvariableop_15_dense_15_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: #
assignvariableop_21_total: #
assignvariableop_22_count: %
assignvariableop_23_total_1: %
assignvariableop_24_count_1: E
+assignvariableop_25_adam_conv2d_40_kernel_m:@7
)assignvariableop_26_adam_conv2d_40_bias_m:@E
+assignvariableop_27_adam_conv2d_41_kernel_m:@@7
)assignvariableop_28_adam_conv2d_41_bias_m:@F
+assignvariableop_29_adam_conv2d_42_kernel_m:@А8
)assignvariableop_30_adam_conv2d_42_bias_m:	АG
+assignvariableop_31_adam_conv2d_43_kernel_m:АА8
)assignvariableop_32_adam_conv2d_43_bias_m:	АG
+assignvariableop_33_adam_conv2d_44_kernel_m:АА8
)assignvariableop_34_adam_conv2d_44_bias_m:	АG
+assignvariableop_35_adam_conv2d_45_kernel_m:АА8
)assignvariableop_36_adam_conv2d_45_bias_m:	А>
*assignvariableop_37_adam_dense_14_kernel_m:
АА7
(assignvariableop_38_adam_dense_14_bias_m:	А=
*assignvariableop_39_adam_dense_15_kernel_m:	А6
(assignvariableop_40_adam_dense_15_bias_m:E
+assignvariableop_41_adam_conv2d_40_kernel_v:@7
)assignvariableop_42_adam_conv2d_40_bias_v:@E
+assignvariableop_43_adam_conv2d_41_kernel_v:@@7
)assignvariableop_44_adam_conv2d_41_bias_v:@F
+assignvariableop_45_adam_conv2d_42_kernel_v:@А8
)assignvariableop_46_adam_conv2d_42_bias_v:	АG
+assignvariableop_47_adam_conv2d_43_kernel_v:АА8
)assignvariableop_48_adam_conv2d_43_bias_v:	АG
+assignvariableop_49_adam_conv2d_44_kernel_v:АА8
)assignvariableop_50_adam_conv2d_44_bias_v:	АG
+assignvariableop_51_adam_conv2d_45_kernel_v:АА8
)assignvariableop_52_adam_conv2d_45_bias_v:	А>
*assignvariableop_53_adam_dense_14_kernel_v:
АА7
(assignvariableop_54_adam_dense_14_bias_v:	А=
*assignvariableop_55_adam_dense_15_kernel_v:	А6
(assignvariableop_56_adam_dense_15_bias_v:
identity_58ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9Ъ 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*└
value╢B│:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHх
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*З
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ├
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*■
_output_shapesы
ш::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*H
dtypes>
<2:	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_40_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_40_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_41_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_41_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_42_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_42_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_43_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_43_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_44_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_44_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_45_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_45_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_14_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_14_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_15_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_15_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_40_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_40_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_41_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_41_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_42_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_42_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_43_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_43_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_44_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_44_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv2d_45_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv2d_45_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_14_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_14_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_15_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_15_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv2d_40_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv2d_40_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_41_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_41_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_42_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_42_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_43_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_43_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_44_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_44_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_conv2d_45_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_conv2d_45_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_14_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_14_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_15_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_15_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ╡

Identity_57Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_58IdentityIdentity_57:output:0^NoOp_1*
T0*
_output_shapes
: в

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_58Identity_58:output:0*З
_input_shapesv
t: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ф
h
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_330997

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
я
╪
-__inference_sequential_7_layer_call_fn_331697

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:	А

unknown_14:
identityИвStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_331200o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         00: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
┴
G
+__inference_dropout_21_layer_call_fn_331985

inputs
identity╣
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_331071h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╝

e
F__inference_dropout_22_layer_call_and_return_conditional_losses_332134

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
є
в
*__inference_conv2d_43_layer_call_fn_332036

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_43_layer_call_and_return_conditional_losses_331101x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_331980

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
║
M
1__inference_max_pooling2d_21_layer_call_fn_332092

inputs
identity┌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_331009Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_332107

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╔
a
E__inference_flatten_7_layer_call_and_return_conditional_losses_331156

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     	  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
з

°
D__inference_dense_14_layer_call_and_return_conditional_losses_331169

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
¤
d
F__inference_dropout_22_layer_call_and_return_conditional_losses_332122

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ў
d
+__inference_dropout_23_layer_call_fn_332175

inputs
identityИвStatefulPartitionedCall┬
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_331265p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┤

e
F__inference_dropout_21_layer_call_and_return_conditional_losses_331367

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
С
Б
E__inference_conv2d_44_layer_call_and_return_conditional_losses_331118

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
є
в
*__inference_conv2d_44_layer_call_fn_332056

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_44_layer_call_and_return_conditional_losses_331118x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs"█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*├
serving_defaultп
S
conv2d_40_input@
!serving_default_conv2d_40_input:0         00<
dense_150
StatefulPartitionedCall:0         tensorflow/serving/predict:╠В
■
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-6
layer-12
layer-13
layer_with_weights-7
layer-14
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
╗

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
╗

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
е
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3_random_generator
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

6kernel
7bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

>kernel
?bias
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

Nkernel
Obias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
е
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_layer
е
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f_random_generator
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
е
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{_random_generator
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_layer
┴

~kernel
bias
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses"
_tf_keras_layer
Ш
	Жiter
Зbeta_1
Иbeta_2

Йdecay
Кlearning_ratemчmш!mщ"mъ6mы7mь>mэ?mюFmяGmЁNmёOmЄomєpmЇ~mїmЎvўv°!v∙"v·6v√7v№>v¤?v■Fv GvАNvБOvВovГpvД~vЕvЖ"
	optimizer
Ц
0
1
!2
"3
64
75
>6
?7
F8
G9
N10
O11
o12
p13
~14
15"
trackable_list_wrapper
Ц
0
1
!2
"3
64
75
>6
?7
F8
G9
N10
O11
o12
p13
~14
15"
trackable_list_wrapper
 "
trackable_list_wrapper
╧
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
В2 
-__inference_sequential_7_layer_call_fn_331235
-__inference_sequential_7_layer_call_fn_331697
-__inference_sequential_7_layer_call_fn_331734
-__inference_sequential_7_layer_call_fn_331552└
╖▓│
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
kwonlydefaultsк 
annotationsк *
 
ю2ы
H__inference_sequential_7_layer_call_and_return_conditional_losses_331802
H__inference_sequential_7_layer_call_and_return_conditional_losses_331891
H__inference_sequential_7_layer_call_and_return_conditional_losses_331603
H__inference_sequential_7_layer_call_and_return_conditional_losses_331654└
╖▓│
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
kwonlydefaultsк 
annotationsк *
 
╘B╤
!__inference__wrapped_model_330988conv2d_40_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
-
Рserving_default"
signature_map
*:(@2conv2d_40/kernel
:@2conv2d_40/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
╘2╤
*__inference_conv2d_40_layer_call_fn_331939в
Щ▓Х
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
annotationsк *
 
я2ь
E__inference_conv2d_40_layer_call_and_return_conditional_losses_331950в
Щ▓Х
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
annotationsк *
 
*:(@@2conv2d_41/kernel
:@2conv2d_41/bias
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
╘2╤
*__inference_conv2d_41_layer_call_fn_331959в
Щ▓Х
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
annotationsк *
 
я2ь
E__inference_conv2d_41_layer_call_and_return_conditional_losses_331970в
Щ▓Х
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
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
█2╪
1__inference_max_pooling2d_20_layer_call_fn_331975в
Щ▓Х
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
annotationsк *
 
Ў2є
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_331980в
Щ▓Х
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
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
/	variables
0trainable_variables
1regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Ф2С
+__inference_dropout_21_layer_call_fn_331985
+__inference_dropout_21_layer_call_fn_331990┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╩2╟
F__inference_dropout_21_layer_call_and_return_conditional_losses_331995
F__inference_dropout_21_layer_call_and_return_conditional_losses_332007┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
+:)@А2conv2d_42/kernel
:А2conv2d_42/bias
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
╘2╤
*__inference_conv2d_42_layer_call_fn_332016в
Щ▓Х
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
annotationsк *
 
я2ь
E__inference_conv2d_42_layer_call_and_return_conditional_losses_332027в
Щ▓Х
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
annotationsк *
 
,:*АА2conv2d_43/kernel
:А2conv2d_43/bias
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
╘2╤
*__inference_conv2d_43_layer_call_fn_332036в
Щ▓Х
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
annotationsк *
 
я2ь
E__inference_conv2d_43_layer_call_and_return_conditional_losses_332047в
Щ▓Х
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
annotationsк *
 
,:*АА2conv2d_44/kernel
:А2conv2d_44/bias
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
пnon_trainable_variables
░layers
▒metrics
 ▓layer_regularization_losses
│layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
╘2╤
*__inference_conv2d_44_layer_call_fn_332056в
Щ▓Х
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
annotationsк *
 
я2ь
E__inference_conv2d_44_layer_call_and_return_conditional_losses_332067в
Щ▓Х
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
annotationsк *
 
,:*АА2conv2d_45/kernel
:А2conv2d_45/bias
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┤non_trainable_variables
╡layers
╢metrics
 ╖layer_regularization_losses
╕layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
╘2╤
*__inference_conv2d_45_layer_call_fn_332076в
Щ▓Х
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
annotationsк *
 
я2ь
E__inference_conv2d_45_layer_call_and_return_conditional_losses_332087в
Щ▓Х
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
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
╜layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
█2╪
1__inference_max_pooling2d_21_layer_call_fn_332092в
Щ▓Х
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
annotationsк *
 
Ў2є
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_332097в
Щ▓Х
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
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╛non_trainable_variables
┐layers
└metrics
 ┴layer_regularization_losses
┬layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
█2╪
1__inference_max_pooling2d_22_layer_call_fn_332102в
Щ▓Х
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
annotationsк *
 
Ў2є
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_332107в
Щ▓Х
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
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
b	variables
ctrainable_variables
dregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Ф2С
+__inference_dropout_22_layer_call_fn_332112
+__inference_dropout_22_layer_call_fn_332117┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╩2╟
F__inference_dropout_22_layer_call_and_return_conditional_losses_332122
F__inference_dropout_22_layer_call_and_return_conditional_losses_332134┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╚non_trainable_variables
╔layers
╩metrics
 ╦layer_regularization_losses
╠layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
╘2╤
*__inference_flatten_7_layer_call_fn_332139в
Щ▓Х
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
annotationsк *
 
я2ь
E__inference_flatten_7_layer_call_and_return_conditional_losses_332145в
Щ▓Х
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
annotationsк *
 
#:!
АА2dense_14/kernel
:А2dense_14/bias
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
═non_trainable_variables
╬layers
╧metrics
 ╨layer_regularization_losses
╤layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
╙2╨
)__inference_dense_14_layer_call_fn_332154в
Щ▓Х
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
annotationsк *
 
ю2ы
D__inference_dense_14_layer_call_and_return_conditional_losses_332165в
Щ▓Х
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
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╥non_trainable_variables
╙layers
╘metrics
 ╒layer_regularization_losses
╓layer_metrics
w	variables
xtrainable_variables
yregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Ф2С
+__inference_dropout_23_layer_call_fn_332170
+__inference_dropout_23_layer_call_fn_332175┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╩2╟
F__inference_dropout_23_layer_call_and_return_conditional_losses_332180
F__inference_dropout_23_layer_call_and_return_conditional_losses_332192┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
": 	А2dense_15/kernel
:2dense_15/bias
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╫non_trainable_variables
╪layers
┘metrics
 ┌layer_regularization_losses
█layer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
╙2╨
)__inference_dense_15_layer_call_fn_332201в
Щ▓Х
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
annotationsк *
 
ю2ы
D__inference_dense_15_layer_call_and_return_conditional_losses_332212в
Щ▓Х
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
annotationsк *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
О
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
0
▄0
▌1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╙B╨
$__inference_signature_wrapper_331930conv2d_40_input"Ф
Н▓Й
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
annotationsк *
 
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
R

▐total

▀count
р	variables
с	keras_api"
_tf_keras_metric
c

тtotal

уcount
ф
_fn_kwargs
х	variables
ц	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
▐0
▀1"
trackable_list_wrapper
.
р	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
т0
у1"
trackable_list_wrapper
.
х	variables"
_generic_user_object
/:-@2Adam/conv2d_40/kernel/m
!:@2Adam/conv2d_40/bias/m
/:-@@2Adam/conv2d_41/kernel/m
!:@2Adam/conv2d_41/bias/m
0:.@А2Adam/conv2d_42/kernel/m
": А2Adam/conv2d_42/bias/m
1:/АА2Adam/conv2d_43/kernel/m
": А2Adam/conv2d_43/bias/m
1:/АА2Adam/conv2d_44/kernel/m
": А2Adam/conv2d_44/bias/m
1:/АА2Adam/conv2d_45/kernel/m
": А2Adam/conv2d_45/bias/m
(:&
АА2Adam/dense_14/kernel/m
!:А2Adam/dense_14/bias/m
':%	А2Adam/dense_15/kernel/m
 :2Adam/dense_15/bias/m
/:-@2Adam/conv2d_40/kernel/v
!:@2Adam/conv2d_40/bias/v
/:-@@2Adam/conv2d_41/kernel/v
!:@2Adam/conv2d_41/bias/v
0:.@А2Adam/conv2d_42/kernel/v
": А2Adam/conv2d_42/bias/v
1:/АА2Adam/conv2d_43/kernel/v
": А2Adam/conv2d_43/bias/v
1:/АА2Adam/conv2d_44/kernel/v
": А2Adam/conv2d_44/bias/v
1:/АА2Adam/conv2d_45/kernel/v
": А2Adam/conv2d_45/bias/v
(:&
АА2Adam/dense_14/kernel/v
!:А2Adam/dense_14/bias/v
':%	А2Adam/dense_15/kernel/v
 :2Adam/dense_15/bias/vп
!__inference__wrapped_model_330988Й!"67>?FGNOop~@в=
6в3
1К.
conv2d_40_input         00
к "3к0
.
dense_15"К
dense_15         ╡
E__inference_conv2d_40_layer_call_and_return_conditional_losses_331950l7в4
-в*
(К%
inputs         00
к "-в*
#К 
0         ..@
Ъ Н
*__inference_conv2d_40_layer_call_fn_331939_7в4
-в*
(К%
inputs         00
к " К         ..@╡
E__inference_conv2d_41_layer_call_and_return_conditional_losses_331970l!"7в4
-в*
(К%
inputs         ..@
к "-в*
#К 
0         ,,@
Ъ Н
*__inference_conv2d_41_layer_call_fn_331959_!"7в4
-в*
(К%
inputs         ..@
к " К         ,,@╢
E__inference_conv2d_42_layer_call_and_return_conditional_losses_332027m677в4
-в*
(К%
inputs         @
к ".в+
$К!
0         А
Ъ О
*__inference_conv2d_42_layer_call_fn_332016`677в4
-в*
(К%
inputs         @
к "!К         А╖
E__inference_conv2d_43_layer_call_and_return_conditional_losses_332047n>?8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ П
*__inference_conv2d_43_layer_call_fn_332036a>?8в5
.в+
)К&
inputs         А
к "!К         А╖
E__inference_conv2d_44_layer_call_and_return_conditional_losses_332067nFG8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ П
*__inference_conv2d_44_layer_call_fn_332056aFG8в5
.в+
)К&
inputs         А
к "!К         А╖
E__inference_conv2d_45_layer_call_and_return_conditional_losses_332087nNO8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ П
*__inference_conv2d_45_layer_call_fn_332076aNO8в5
.в+
)К&
inputs         А
к "!К         Аж
D__inference_dense_14_layer_call_and_return_conditional_losses_332165^op0в-
&в#
!К
inputs         А
к "&в#
К
0         А
Ъ ~
)__inference_dense_14_layer_call_fn_332154Qop0в-
&в#
!К
inputs         А
к "К         Ае
D__inference_dense_15_layer_call_and_return_conditional_losses_332212]~0в-
&в#
!К
inputs         А
к "%в"
К
0         
Ъ }
)__inference_dense_15_layer_call_fn_332201P~0в-
&в#
!К
inputs         А
к "К         ╢
F__inference_dropout_21_layer_call_and_return_conditional_losses_331995l;в8
1в.
(К%
inputs         @
p 
к "-в*
#К 
0         @
Ъ ╢
F__inference_dropout_21_layer_call_and_return_conditional_losses_332007l;в8
1в.
(К%
inputs         @
p
к "-в*
#К 
0         @
Ъ О
+__inference_dropout_21_layer_call_fn_331985_;в8
1в.
(К%
inputs         @
p 
к " К         @О
+__inference_dropout_21_layer_call_fn_331990_;в8
1в.
(К%
inputs         @
p
к " К         @╕
F__inference_dropout_22_layer_call_and_return_conditional_losses_332122n<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ ╕
F__inference_dropout_22_layer_call_and_return_conditional_losses_332134n<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ Р
+__inference_dropout_22_layer_call_fn_332112a<в9
2в/
)К&
inputs         А
p 
к "!К         АР
+__inference_dropout_22_layer_call_fn_332117a<в9
2в/
)К&
inputs         А
p
к "!К         Аи
F__inference_dropout_23_layer_call_and_return_conditional_losses_332180^4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ и
F__inference_dropout_23_layer_call_and_return_conditional_losses_332192^4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ А
+__inference_dropout_23_layer_call_fn_332170Q4в1
*в'
!К
inputs         А
p 
к "К         АА
+__inference_dropout_23_layer_call_fn_332175Q4в1
*в'
!К
inputs         А
p
к "К         Ал
E__inference_flatten_7_layer_call_and_return_conditional_losses_332145b8в5
.в+
)К&
inputs         А
к "&в#
К
0         А
Ъ Г
*__inference_flatten_7_layer_call_fn_332139U8в5
.в+
)К&
inputs         А
к "К         Ая
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_331980ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╟
1__inference_max_pooling2d_20_layer_call_fn_331975СRвO
HвE
CК@
inputs4                                    
к ";К84                                    я
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_332097ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╟
1__inference_max_pooling2d_21_layer_call_fn_332092СRвO
HвE
CК@
inputs4                                    
к ";К84                                    я
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_332107ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╟
1__inference_max_pooling2d_22_layer_call_fn_332102СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ╨
H__inference_sequential_7_layer_call_and_return_conditional_losses_331603Г!"67>?FGNOop~HвE
>в;
1К.
conv2d_40_input         00
p 

 
к "%в"
К
0         
Ъ ╨
H__inference_sequential_7_layer_call_and_return_conditional_losses_331654Г!"67>?FGNOop~HвE
>в;
1К.
conv2d_40_input         00
p

 
к "%в"
К
0         
Ъ ╞
H__inference_sequential_7_layer_call_and_return_conditional_losses_331802z!"67>?FGNOop~?в<
5в2
(К%
inputs         00
p 

 
к "%в"
К
0         
Ъ ╞
H__inference_sequential_7_layer_call_and_return_conditional_losses_331891z!"67>?FGNOop~?в<
5в2
(К%
inputs         00
p

 
к "%в"
К
0         
Ъ з
-__inference_sequential_7_layer_call_fn_331235v!"67>?FGNOop~HвE
>в;
1К.
conv2d_40_input         00
p 

 
к "К         з
-__inference_sequential_7_layer_call_fn_331552v!"67>?FGNOop~HвE
>в;
1К.
conv2d_40_input         00
p

 
к "К         Ю
-__inference_sequential_7_layer_call_fn_331697m!"67>?FGNOop~?в<
5в2
(К%
inputs         00
p 

 
к "К         Ю
-__inference_sequential_7_layer_call_fn_331734m!"67>?FGNOop~?в<
5в2
(К%
inputs         00
p

 
к "К         ┼
$__inference_signature_wrapper_331930Ь!"67>?FGNOop~SвP
в 
IкF
D
conv2d_40_input1К.
conv2d_40_input         00"3к0
.
dense_15"К
dense_15         