Ťá
˝
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T" 
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
k
BatchMatMulV2
x"T
y"T
output"T"
Ttype:

2	"
adj_xbool( "
adj_ybool( 
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
.
Identity

input"T
output"T"	
Ttype
8
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
1
Square
x"T
y"T"
Ttype:

2	
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*
1.15.0-rc22v1.15.0-rc1-42-g5adb433d78Ž
F
XPlaceholder*
shape:*
dtype0*
_output_shapes
:
F
YPlaceholder*
shape:*
dtype0*
_output_shapes
:

%W1/Initializer/truncated_normal/shapeConst*
valueB"      *
_class
	loc:@W1*
dtype0*
_output_shapes
:

$W1/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class
	loc:@W1*
dtype0*
_output_shapes
: 

&W1/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdN?*
_class
	loc:@W1*
dtype0*
_output_shapes
: 
Ń
/W1/Initializer/truncated_normal/TruncatedNormalTruncatedNormal%W1/Initializer/truncated_normal/shape*
seed*
T0*
_class
	loc:@W1*
seed2*
dtype0*
_output_shapes
:	
Ä
#W1/Initializer/truncated_normal/mulMul/W1/Initializer/truncated_normal/TruncatedNormal&W1/Initializer/truncated_normal/stddev*
T0*
_class
	loc:@W1*
_output_shapes
:	
˛
W1/Initializer/truncated_normalAdd#W1/Initializer/truncated_normal/mul$W1/Initializer/truncated_normal/mean*
T0*
_class
	loc:@W1*
_output_shapes
:	

W1
VariableV2*
shared_name *
_class
	loc:@W1*
	container *
shape:	*
dtype0*
_output_shapes
:	
˘
	W1/AssignAssignW1W1/Initializer/truncated_normal*
use_locking(*
T0*
_class
	loc:@W1*
validate_shape(*
_output_shapes
:	
X
W1/readIdentityW1*
T0*
_class
	loc:@W1*
_output_shapes
:	

%W2/Initializer/truncated_normal/shapeConst*
valueB"      *
_class
	loc:@W2*
dtype0*
_output_shapes
:

$W2/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class
	loc:@W2*
dtype0*
_output_shapes
: 

&W2/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
_class
	loc:@W2*
dtype0*
_output_shapes
: 
Ň
/W2/Initializer/truncated_normal/TruncatedNormalTruncatedNormal%W2/Initializer/truncated_normal/shape*
seed*
T0*
_class
	loc:@W2*
seed2*
dtype0* 
_output_shapes
:

Ĺ
#W2/Initializer/truncated_normal/mulMul/W2/Initializer/truncated_normal/TruncatedNormal&W2/Initializer/truncated_normal/stddev*
T0*
_class
	loc:@W2* 
_output_shapes
:

ł
W2/Initializer/truncated_normalAdd#W2/Initializer/truncated_normal/mul$W2/Initializer/truncated_normal/mean*
T0*
_class
	loc:@W2* 
_output_shapes
:


W2
VariableV2*
shared_name *
_class
	loc:@W2*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ł
	W2/AssignAssignW2W2/Initializer/truncated_normal*
use_locking(*
T0*
_class
	loc:@W2*
validate_shape(* 
_output_shapes
:

Y
W2/readIdentityW2*
T0*
_class
	loc:@W2* 
_output_shapes
:


%W3/Initializer/truncated_normal/shapeConst*
valueB"      *
_class
	loc:@W3*
dtype0*
_output_shapes
:

$W3/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class
	loc:@W3*
dtype0*
_output_shapes
: 

&W3/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
_class
	loc:@W3*
dtype0*
_output_shapes
: 
Ň
/W3/Initializer/truncated_normal/TruncatedNormalTruncatedNormal%W3/Initializer/truncated_normal/shape*
seed*
T0*
_class
	loc:@W3*
seed2*
dtype0* 
_output_shapes
:

Ĺ
#W3/Initializer/truncated_normal/mulMul/W3/Initializer/truncated_normal/TruncatedNormal&W3/Initializer/truncated_normal/stddev*
T0*
_class
	loc:@W3* 
_output_shapes
:

ł
W3/Initializer/truncated_normalAdd#W3/Initializer/truncated_normal/mul$W3/Initializer/truncated_normal/mean*
T0*
_class
	loc:@W3* 
_output_shapes
:


W3
VariableV2*
shared_name *
_class
	loc:@W3*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ł
	W3/AssignAssignW3W3/Initializer/truncated_normal*
use_locking(*
T0*
_class
	loc:@W3*
validate_shape(* 
_output_shapes
:

Y
W3/readIdentityW3*
T0*
_class
	loc:@W3* 
_output_shapes
:


%W4/Initializer/truncated_normal/shapeConst*
valueB"      *
_class
	loc:@W4*
dtype0*
_output_shapes
:

$W4/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class
	loc:@W4*
dtype0*
_output_shapes
: 

&W4/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
_class
	loc:@W4*
dtype0*
_output_shapes
: 
Ň
/W4/Initializer/truncated_normal/TruncatedNormalTruncatedNormal%W4/Initializer/truncated_normal/shape*
seed*
T0*
_class
	loc:@W4*
seed2 *
dtype0* 
_output_shapes
:

Ĺ
#W4/Initializer/truncated_normal/mulMul/W4/Initializer/truncated_normal/TruncatedNormal&W4/Initializer/truncated_normal/stddev*
T0*
_class
	loc:@W4* 
_output_shapes
:

ł
W4/Initializer/truncated_normalAdd#W4/Initializer/truncated_normal/mul$W4/Initializer/truncated_normal/mean*
T0*
_class
	loc:@W4* 
_output_shapes
:


W4
VariableV2*
shared_name *
_class
	loc:@W4*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ł
	W4/AssignAssignW4W4/Initializer/truncated_normal*
use_locking(*
T0*
_class
	loc:@W4*
validate_shape(* 
_output_shapes
:

Y
W4/readIdentityW4*
T0*
_class
	loc:@W4* 
_output_shapes
:


%W5/Initializer/truncated_normal/shapeConst*
valueB"      *
_class
	loc:@W5*
dtype0*
_output_shapes
:

$W5/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class
	loc:@W5*
dtype0*
_output_shapes
: 

&W5/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
_class
	loc:@W5*
dtype0*
_output_shapes
: 
Ň
/W5/Initializer/truncated_normal/TruncatedNormalTruncatedNormal%W5/Initializer/truncated_normal/shape*
seed*
T0*
_class
	loc:@W5*
seed2)*
dtype0* 
_output_shapes
:

Ĺ
#W5/Initializer/truncated_normal/mulMul/W5/Initializer/truncated_normal/TruncatedNormal&W5/Initializer/truncated_normal/stddev*
T0*
_class
	loc:@W5* 
_output_shapes
:

ł
W5/Initializer/truncated_normalAdd#W5/Initializer/truncated_normal/mul$W5/Initializer/truncated_normal/mean*
T0*
_class
	loc:@W5* 
_output_shapes
:


W5
VariableV2*
shared_name *
_class
	loc:@W5*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ł
	W5/AssignAssignW5W5/Initializer/truncated_normal*
use_locking(*
T0*
_class
	loc:@W5*
validate_shape(* 
_output_shapes
:

Y
W5/readIdentityW5*
T0*
_class
	loc:@W5* 
_output_shapes
:


%W6/Initializer/truncated_normal/shapeConst*
valueB"      *
_class
	loc:@W6*
dtype0*
_output_shapes
:

$W6/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class
	loc:@W6*
dtype0*
_output_shapes
: 

&W6/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
_class
	loc:@W6*
dtype0*
_output_shapes
: 
Ň
/W6/Initializer/truncated_normal/TruncatedNormalTruncatedNormal%W6/Initializer/truncated_normal/shape*
seed*
T0*
_class
	loc:@W6*
seed22*
dtype0* 
_output_shapes
:

Ĺ
#W6/Initializer/truncated_normal/mulMul/W6/Initializer/truncated_normal/TruncatedNormal&W6/Initializer/truncated_normal/stddev*
T0*
_class
	loc:@W6* 
_output_shapes
:

ł
W6/Initializer/truncated_normalAdd#W6/Initializer/truncated_normal/mul$W6/Initializer/truncated_normal/mean*
T0*
_class
	loc:@W6* 
_output_shapes
:


W6
VariableV2*
shared_name *
_class
	loc:@W6*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ł
	W6/AssignAssignW6W6/Initializer/truncated_normal*
use_locking(*
T0*
_class
	loc:@W6*
validate_shape(* 
_output_shapes
:

Y
W6/readIdentityW6*
T0*
_class
	loc:@W6* 
_output_shapes
:


%W7/Initializer/truncated_normal/shapeConst*
valueB"      *
_class
	loc:@W7*
dtype0*
_output_shapes
:

$W7/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class
	loc:@W7*
dtype0*
_output_shapes
: 

&W7/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
_class
	loc:@W7*
dtype0*
_output_shapes
: 
Ň
/W7/Initializer/truncated_normal/TruncatedNormalTruncatedNormal%W7/Initializer/truncated_normal/shape*
seed*
T0*
_class
	loc:@W7*
seed2;*
dtype0* 
_output_shapes
:

Ĺ
#W7/Initializer/truncated_normal/mulMul/W7/Initializer/truncated_normal/TruncatedNormal&W7/Initializer/truncated_normal/stddev*
T0*
_class
	loc:@W7* 
_output_shapes
:

ł
W7/Initializer/truncated_normalAdd#W7/Initializer/truncated_normal/mul$W7/Initializer/truncated_normal/mean*
T0*
_class
	loc:@W7* 
_output_shapes
:


W7
VariableV2*
shared_name *
_class
	loc:@W7*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ł
	W7/AssignAssignW7W7/Initializer/truncated_normal*
use_locking(*
T0*
_class
	loc:@W7*
validate_shape(* 
_output_shapes
:

Y
W7/readIdentityW7*
T0*
_class
	loc:@W7* 
_output_shapes
:


%W8/Initializer/truncated_normal/shapeConst*
valueB"      *
_class
	loc:@W8*
dtype0*
_output_shapes
:

$W8/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class
	loc:@W8*
dtype0*
_output_shapes
: 

&W8/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
_class
	loc:@W8*
dtype0*
_output_shapes
: 
Ň
/W8/Initializer/truncated_normal/TruncatedNormalTruncatedNormal%W8/Initializer/truncated_normal/shape*
seed*
T0*
_class
	loc:@W8*
seed2D*
dtype0* 
_output_shapes
:

Ĺ
#W8/Initializer/truncated_normal/mulMul/W8/Initializer/truncated_normal/TruncatedNormal&W8/Initializer/truncated_normal/stddev*
T0*
_class
	loc:@W8* 
_output_shapes
:

ł
W8/Initializer/truncated_normalAdd#W8/Initializer/truncated_normal/mul$W8/Initializer/truncated_normal/mean*
T0*
_class
	loc:@W8* 
_output_shapes
:


W8
VariableV2*
shared_name *
_class
	loc:@W8*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ł
	W8/AssignAssignW8W8/Initializer/truncated_normal*
use_locking(*
T0*
_class
	loc:@W8*
validate_shape(* 
_output_shapes
:

Y
W8/readIdentityW8*
T0*
_class
	loc:@W8* 
_output_shapes
:


%W9/Initializer/truncated_normal/shapeConst*
valueB"      *
_class
	loc:@W9*
dtype0*
_output_shapes
:

$W9/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class
	loc:@W9*
dtype0*
_output_shapes
: 

&W9/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
_class
	loc:@W9*
dtype0*
_output_shapes
: 
Ň
/W9/Initializer/truncated_normal/TruncatedNormalTruncatedNormal%W9/Initializer/truncated_normal/shape*
seed*
T0*
_class
	loc:@W9*
seed2M*
dtype0* 
_output_shapes
:

Ĺ
#W9/Initializer/truncated_normal/mulMul/W9/Initializer/truncated_normal/TruncatedNormal&W9/Initializer/truncated_normal/stddev*
T0*
_class
	loc:@W9* 
_output_shapes
:

ł
W9/Initializer/truncated_normalAdd#W9/Initializer/truncated_normal/mul$W9/Initializer/truncated_normal/mean*
T0*
_class
	loc:@W9* 
_output_shapes
:


W9
VariableV2*
shared_name *
_class
	loc:@W9*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ł
	W9/AssignAssignW9W9/Initializer/truncated_normal*
use_locking(*
T0*
_class
	loc:@W9*
validate_shape(* 
_output_shapes
:

Y
W9/readIdentityW9*
T0*
_class
	loc:@W9* 
_output_shapes
:


&W10/Initializer/truncated_normal/shapeConst*
valueB"      *
_class

loc:@W10*
dtype0*
_output_shapes
:

%W10/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class

loc:@W10*
dtype0*
_output_shapes
: 

'W10/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
_class

loc:@W10*
dtype0*
_output_shapes
: 
Ő
0W10/Initializer/truncated_normal/TruncatedNormalTruncatedNormal&W10/Initializer/truncated_normal/shape*
seed*
T0*
_class

loc:@W10*
seed2V*
dtype0* 
_output_shapes
:

É
$W10/Initializer/truncated_normal/mulMul0W10/Initializer/truncated_normal/TruncatedNormal'W10/Initializer/truncated_normal/stddev*
T0*
_class

loc:@W10* 
_output_shapes
:

ˇ
 W10/Initializer/truncated_normalAdd$W10/Initializer/truncated_normal/mul%W10/Initializer/truncated_normal/mean*
T0*
_class

loc:@W10* 
_output_shapes
:


W10
VariableV2*
shared_name *
_class

loc:@W10*
	container *
shape:
*
dtype0* 
_output_shapes
:

§

W10/AssignAssignW10 W10/Initializer/truncated_normal*
use_locking(*
T0*
_class

loc:@W10*
validate_shape(* 
_output_shapes
:

\
W10/readIdentityW10*
T0*
_class

loc:@W10* 
_output_shapes
:


&W11/Initializer/truncated_normal/shapeConst*
valueB"      *
_class

loc:@W11*
dtype0*
_output_shapes
:

%W11/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class

loc:@W11*
dtype0*
_output_shapes
: 

'W11/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
_class

loc:@W11*
dtype0*
_output_shapes
: 
Ő
0W11/Initializer/truncated_normal/TruncatedNormalTruncatedNormal&W11/Initializer/truncated_normal/shape*
seed*
T0*
_class

loc:@W11*
seed2_*
dtype0* 
_output_shapes
:

É
$W11/Initializer/truncated_normal/mulMul0W11/Initializer/truncated_normal/TruncatedNormal'W11/Initializer/truncated_normal/stddev*
T0*
_class

loc:@W11* 
_output_shapes
:

ˇ
 W11/Initializer/truncated_normalAdd$W11/Initializer/truncated_normal/mul%W11/Initializer/truncated_normal/mean*
T0*
_class

loc:@W11* 
_output_shapes
:


W11
VariableV2*
shared_name *
_class

loc:@W11*
	container *
shape:
*
dtype0* 
_output_shapes
:

§

W11/AssignAssignW11 W11/Initializer/truncated_normal*
use_locking(*
T0*
_class

loc:@W11*
validate_shape(* 
_output_shapes
:

\
W11/readIdentityW11*
T0*
_class

loc:@W11* 
_output_shapes
:


&W12/Initializer/truncated_normal/shapeConst*
valueB"      *
_class

loc:@W12*
dtype0*
_output_shapes
:

%W12/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class

loc:@W12*
dtype0*
_output_shapes
: 

'W12/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
_class

loc:@W12*
dtype0*
_output_shapes
: 
Ő
0W12/Initializer/truncated_normal/TruncatedNormalTruncatedNormal&W12/Initializer/truncated_normal/shape*
seed*
T0*
_class

loc:@W12*
seed2h*
dtype0* 
_output_shapes
:

É
$W12/Initializer/truncated_normal/mulMul0W12/Initializer/truncated_normal/TruncatedNormal'W12/Initializer/truncated_normal/stddev*
T0*
_class

loc:@W12* 
_output_shapes
:

ˇ
 W12/Initializer/truncated_normalAdd$W12/Initializer/truncated_normal/mul%W12/Initializer/truncated_normal/mean*
T0*
_class

loc:@W12* 
_output_shapes
:


W12
VariableV2*
shared_name *
_class

loc:@W12*
	container *
shape:
*
dtype0* 
_output_shapes
:

§

W12/AssignAssignW12 W12/Initializer/truncated_normal*
use_locking(*
T0*
_class

loc:@W12*
validate_shape(* 
_output_shapes
:

\
W12/readIdentityW12*
T0*
_class

loc:@W12* 
_output_shapes
:


&W13/Initializer/truncated_normal/shapeConst*
valueB"      *
_class

loc:@W13*
dtype0*
_output_shapes
:

%W13/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class

loc:@W13*
dtype0*
_output_shapes
: 

'W13/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
_class

loc:@W13*
dtype0*
_output_shapes
: 
Ő
0W13/Initializer/truncated_normal/TruncatedNormalTruncatedNormal&W13/Initializer/truncated_normal/shape*
seed*
T0*
_class

loc:@W13*
seed2q*
dtype0* 
_output_shapes
:

É
$W13/Initializer/truncated_normal/mulMul0W13/Initializer/truncated_normal/TruncatedNormal'W13/Initializer/truncated_normal/stddev*
T0*
_class

loc:@W13* 
_output_shapes
:

ˇ
 W13/Initializer/truncated_normalAdd$W13/Initializer/truncated_normal/mul%W13/Initializer/truncated_normal/mean*
T0*
_class

loc:@W13* 
_output_shapes
:


W13
VariableV2*
shared_name *
_class

loc:@W13*
	container *
shape:
*
dtype0* 
_output_shapes
:

§

W13/AssignAssignW13 W13/Initializer/truncated_normal*
use_locking(*
T0*
_class

loc:@W13*
validate_shape(* 
_output_shapes
:

\
W13/readIdentityW13*
T0*
_class

loc:@W13* 
_output_shapes
:


&W14/Initializer/truncated_normal/shapeConst*
valueB"      *
_class

loc:@W14*
dtype0*
_output_shapes
:

%W14/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class

loc:@W14*
dtype0*
_output_shapes
: 

'W14/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
_class

loc:@W14*
dtype0*
_output_shapes
: 
Ő
0W14/Initializer/truncated_normal/TruncatedNormalTruncatedNormal&W14/Initializer/truncated_normal/shape*
seed*
T0*
_class

loc:@W14*
seed2z*
dtype0* 
_output_shapes
:

É
$W14/Initializer/truncated_normal/mulMul0W14/Initializer/truncated_normal/TruncatedNormal'W14/Initializer/truncated_normal/stddev*
T0*
_class

loc:@W14* 
_output_shapes
:

ˇ
 W14/Initializer/truncated_normalAdd$W14/Initializer/truncated_normal/mul%W14/Initializer/truncated_normal/mean*
T0*
_class

loc:@W14* 
_output_shapes
:


W14
VariableV2*
shared_name *
_class

loc:@W14*
	container *
shape:
*
dtype0* 
_output_shapes
:

§

W14/AssignAssignW14 W14/Initializer/truncated_normal*
use_locking(*
T0*
_class

loc:@W14*
validate_shape(* 
_output_shapes
:

\
W14/readIdentityW14*
T0*
_class

loc:@W14* 
_output_shapes
:


&W15/Initializer/truncated_normal/shapeConst*
valueB"      *
_class

loc:@W15*
dtype0*
_output_shapes
:

%W15/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class

loc:@W15*
dtype0*
_output_shapes
: 

'W15/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
_class

loc:@W15*
dtype0*
_output_shapes
: 
Ö
0W15/Initializer/truncated_normal/TruncatedNormalTruncatedNormal&W15/Initializer/truncated_normal/shape*
seed*
T0*
_class

loc:@W15*
seed2*
dtype0* 
_output_shapes
:

É
$W15/Initializer/truncated_normal/mulMul0W15/Initializer/truncated_normal/TruncatedNormal'W15/Initializer/truncated_normal/stddev*
T0*
_class

loc:@W15* 
_output_shapes
:

ˇ
 W15/Initializer/truncated_normalAdd$W15/Initializer/truncated_normal/mul%W15/Initializer/truncated_normal/mean*
T0*
_class

loc:@W15* 
_output_shapes
:


W15
VariableV2*
shared_name *
_class

loc:@W15*
	container *
shape:
*
dtype0* 
_output_shapes
:

§

W15/AssignAssignW15 W15/Initializer/truncated_normal*
use_locking(*
T0*
_class

loc:@W15*
validate_shape(* 
_output_shapes
:

\
W15/readIdentityW15*
T0*
_class

loc:@W15* 
_output_shapes
:


&W16/Initializer/truncated_normal/shapeConst*
valueB"      *
_class

loc:@W16*
dtype0*
_output_shapes
:

%W16/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class

loc:@W16*
dtype0*
_output_shapes
: 

'W16/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
_class

loc:@W16*
dtype0*
_output_shapes
: 
Ö
0W16/Initializer/truncated_normal/TruncatedNormalTruncatedNormal&W16/Initializer/truncated_normal/shape*
seed*
T0*
_class

loc:@W16*
seed2*
dtype0* 
_output_shapes
:

É
$W16/Initializer/truncated_normal/mulMul0W16/Initializer/truncated_normal/TruncatedNormal'W16/Initializer/truncated_normal/stddev*
T0*
_class

loc:@W16* 
_output_shapes
:

ˇ
 W16/Initializer/truncated_normalAdd$W16/Initializer/truncated_normal/mul%W16/Initializer/truncated_normal/mean*
T0*
_class

loc:@W16* 
_output_shapes
:


W16
VariableV2*
shared_name *
_class

loc:@W16*
	container *
shape:
*
dtype0* 
_output_shapes
:

§

W16/AssignAssignW16 W16/Initializer/truncated_normal*
use_locking(*
T0*
_class

loc:@W16*
validate_shape(* 
_output_shapes
:

\
W16/readIdentityW16*
T0*
_class

loc:@W16* 
_output_shapes
:


&W17/Initializer/truncated_normal/shapeConst*
valueB"      *
_class

loc:@W17*
dtype0*
_output_shapes
:

%W17/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class

loc:@W17*
dtype0*
_output_shapes
: 

'W17/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
_class

loc:@W17*
dtype0*
_output_shapes
: 
Ö
0W17/Initializer/truncated_normal/TruncatedNormalTruncatedNormal&W17/Initializer/truncated_normal/shape*
seed*
T0*
_class

loc:@W17*
seed2*
dtype0* 
_output_shapes
:

É
$W17/Initializer/truncated_normal/mulMul0W17/Initializer/truncated_normal/TruncatedNormal'W17/Initializer/truncated_normal/stddev*
T0*
_class

loc:@W17* 
_output_shapes
:

ˇ
 W17/Initializer/truncated_normalAdd$W17/Initializer/truncated_normal/mul%W17/Initializer/truncated_normal/mean*
T0*
_class

loc:@W17* 
_output_shapes
:


W17
VariableV2*
shared_name *
_class

loc:@W17*
	container *
shape:
*
dtype0* 
_output_shapes
:

§

W17/AssignAssignW17 W17/Initializer/truncated_normal*
use_locking(*
T0*
_class

loc:@W17*
validate_shape(* 
_output_shapes
:

\
W17/readIdentityW17*
T0*
_class

loc:@W17* 
_output_shapes
:


&W18/Initializer/truncated_normal/shapeConst*
valueB"      *
_class

loc:@W18*
dtype0*
_output_shapes
:

%W18/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class

loc:@W18*
dtype0*
_output_shapes
: 

'W18/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
_class

loc:@W18*
dtype0*
_output_shapes
: 
Ö
0W18/Initializer/truncated_normal/TruncatedNormalTruncatedNormal&W18/Initializer/truncated_normal/shape*
seed*
T0*
_class

loc:@W18*
seed2*
dtype0* 
_output_shapes
:

É
$W18/Initializer/truncated_normal/mulMul0W18/Initializer/truncated_normal/TruncatedNormal'W18/Initializer/truncated_normal/stddev*
T0*
_class

loc:@W18* 
_output_shapes
:

ˇ
 W18/Initializer/truncated_normalAdd$W18/Initializer/truncated_normal/mul%W18/Initializer/truncated_normal/mean*
T0*
_class

loc:@W18* 
_output_shapes
:


W18
VariableV2*
shared_name *
_class

loc:@W18*
	container *
shape:
*
dtype0* 
_output_shapes
:

§

W18/AssignAssignW18 W18/Initializer/truncated_normal*
use_locking(*
T0*
_class

loc:@W18*
validate_shape(* 
_output_shapes
:

\
W18/readIdentityW18*
T0*
_class

loc:@W18* 
_output_shapes
:


&out/Initializer/truncated_normal/shapeConst*
valueB"      *
_class

loc:@out*
dtype0*
_output_shapes
:

%out/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class

loc:@out*
dtype0*
_output_shapes
: 

'out/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
_class

loc:@out*
dtype0*
_output_shapes
: 
Ő
0out/Initializer/truncated_normal/TruncatedNormalTruncatedNormal&out/Initializer/truncated_normal/shape*
seed*
T0*
_class

loc:@out*
seed2§*
dtype0*
_output_shapes
:	
Č
$out/Initializer/truncated_normal/mulMul0out/Initializer/truncated_normal/TruncatedNormal'out/Initializer/truncated_normal/stddev*
T0*
_class

loc:@out*
_output_shapes
:	
ś
 out/Initializer/truncated_normalAdd$out/Initializer/truncated_normal/mul%out/Initializer/truncated_normal/mean*
T0*
_class

loc:@out*
_output_shapes
:	

out
VariableV2*
shared_name *
_class

loc:@out*
	container *
shape:	*
dtype0*
_output_shapes
:	
Ś

out/AssignAssignout out/Initializer/truncated_normal*
use_locking(*
T0*
_class

loc:@out*
validate_shape(*
_output_shapes
:	
[
out/readIdentityout*
T0*
_class

loc:@out*
_output_shapes
:	
`
MatMulBatchMatMulV2XW1/read*
adj_x( *
adj_y( *
T0*
_output_shapes
:
7
ReluReluMatMul*
T0*
_output_shapes
:
e
MatMul_1BatchMatMulV2ReluW2/read*
adj_x( *
adj_y( *
T0*
_output_shapes
:
;
Relu_1ReluMatMul_1*
T0*
_output_shapes
:
g
MatMul_2BatchMatMulV2Relu_1W3/read*
adj_x( *
adj_y( *
T0*
_output_shapes
:
;
Relu_2ReluMatMul_2*
T0*
_output_shapes
:
g
MatMul_3BatchMatMulV2Relu_2W4/read*
adj_x( *
adj_y( *
T0*
_output_shapes
:
;
Relu_3ReluMatMul_3*
T0*
_output_shapes
:
g
MatMul_4BatchMatMulV2Relu_3W5/read*
adj_x( *
adj_y( *
T0*
_output_shapes
:
;
Relu_4ReluMatMul_4*
T0*
_output_shapes
:
g
MatMul_5BatchMatMulV2Relu_4W6/read*
adj_x( *
adj_y( *
T0*
_output_shapes
:
;
Relu_5ReluMatMul_5*
T0*
_output_shapes
:
g
MatMul_6BatchMatMulV2Relu_5W7/read*
adj_x( *
adj_y( *
T0*
_output_shapes
:
;
Relu_6ReluMatMul_6*
T0*
_output_shapes
:
g
MatMul_7BatchMatMulV2Relu_6W8/read*
adj_x( *
adj_y( *
T0*
_output_shapes
:
;
Relu_7ReluMatMul_7*
T0*
_output_shapes
:
g
MatMul_8BatchMatMulV2Relu_7W9/read*
adj_x( *
adj_y( *
T0*
_output_shapes
:
;
Relu_8ReluMatMul_8*
T0*
_output_shapes
:
h
MatMul_9BatchMatMulV2Relu_8W10/read*
adj_x( *
adj_y( *
T0*
_output_shapes
:
;
Relu_9ReluMatMul_9*
T0*
_output_shapes
:
i
	MatMul_10BatchMatMulV2Relu_9W11/read*
adj_x( *
adj_y( *
T0*
_output_shapes
:
=
Relu_10Relu	MatMul_10*
T0*
_output_shapes
:
j
	MatMul_11BatchMatMulV2Relu_10W12/read*
adj_x( *
adj_y( *
T0*
_output_shapes
:
=
Relu_11Relu	MatMul_11*
T0*
_output_shapes
:
j
	MatMul_12BatchMatMulV2Relu_11W13/read*
adj_x( *
adj_y( *
T0*
_output_shapes
:
=
Relu_12Relu	MatMul_12*
T0*
_output_shapes
:
j
	MatMul_13BatchMatMulV2Relu_12W14/read*
adj_x( *
adj_y( *
T0*
_output_shapes
:
=
Relu_13Relu	MatMul_13*
T0*
_output_shapes
:
j
	MatMul_14BatchMatMulV2Relu_13W15/read*
adj_x( *
adj_y( *
T0*
_output_shapes
:
=
Relu_14Relu	MatMul_14*
T0*
_output_shapes
:
j
	MatMul_15BatchMatMulV2Relu_14W16/read*
adj_x( *
adj_y( *
T0*
_output_shapes
:
=
Relu_15Relu	MatMul_15*
T0*
_output_shapes
:
j
	MatMul_16BatchMatMulV2Relu_15W17/read*
adj_x( *
adj_y( *
T0*
_output_shapes
:
=
Relu_16Relu	MatMul_16*
T0*
_output_shapes
:
j
	MatMul_17BatchMatMulV2Relu_16W18/read*
adj_x( *
adj_y( *
T0*
_output_shapes
:
=
Relu_17Relu	MatMul_17*
T0*
_output_shapes
:
j
	MatMul_18BatchMatMulV2Relu_17out/read*
adj_x( *
adj_y( *
T0*
_output_shapes
:
;
hIdentity	MatMul_18*
T0*
_output_shapes
:
;
subSub	MatMul_18Y*
T0*
_output_shapes
:
8
SquareSquaresub*
T0*
_output_shapes
:
5
RankRankSquare*
T0*
_output_shapes
: 
M
range/startConst*
value	B : *
dtype0*
_output_shapes
: 
M
range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
_
rangeRangerange/startRankrange/delta*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Y
MeanMeanSquarerange*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
h
gradients/Mean_grad/ShapeShapeSquare*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Mean_grad/SizeSizegradients/Mean_grad/Shape*
T0*
out_type0*,
_class"
 loc:@gradients/Mean_grad/Shape*
_output_shapes
: 

gradients/Mean_grad/addAddV2rangegradients/Mean_grad/Size*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
gradients/Mean_grad/modFloorModgradients/Mean_grad/addgradients/Mean_grad/Size*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
gradients/Mean_grad/Shape_1Shapegradients/Mean_grad/mod*
T0*
out_type0*,
_class"
 loc:@gradients/Mean_grad/Shape*
_output_shapes
:

gradients/Mean_grad/range/startConst*
value	B : *,
_class"
 loc:@gradients/Mean_grad/Shape*
dtype0*
_output_shapes
: 

gradients/Mean_grad/range/deltaConst*
value	B :*,
_class"
 loc:@gradients/Mean_grad/Shape*
dtype0*
_output_shapes
: 
Ý
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Sizegradients/Mean_grad/range/delta*

Tidx0*,
_class"
 loc:@gradients/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Mean_grad/Fill/valueConst*
value	B :*,
_class"
 loc:@gradients/Mean_grad/Shape*
dtype0*
_output_shapes
: 
Ë
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*
T0*

index_type0*,
_class"
 loc:@gradients/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

!gradients/Mean_grad/DynamicStitchDynamicStitchgradients/Mean_grad/rangegradients/Mean_grad/modgradients/Mean_grad/Shapegradients/Mean_grad/Fill*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Mean_grad/Maximum/yConst*
value	B :*,
_class"
 loc:@gradients/Mean_grad/Shape*
dtype0*
_output_shapes
: 
Ä
gradients/Mean_grad/MaximumMaximum!gradients/Mean_grad/DynamicStitchgradients/Mean_grad/Maximum/y*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Shapegradients/Mean_grad/Maximum*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/floordiv*

Tmultiples0*
T0*
_output_shapes
:
j
gradients/Mean_grad/Shape_2ShapeSquare*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
gradients/Mean_grad/Shape_3Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
a
gradients/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Mean_grad/Maximum_1Maximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: 

gradients/Mean_grad/floordiv_1FloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum_1*
T0*
_output_shapes
: 

gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv_1*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
}
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*
_output_shapes
:
~
gradients/Square_grad/ConstConst^gradients/Mean_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
e
gradients/Square_grad/MulMulsubgradients/Square_grad/Const*
T0*
_output_shapes
:
}
gradients/Square_grad/Mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/Mul*
T0*
_output_shapes
:
j
gradients/sub_grad/ShapeShape	MatMul_18*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
gradients/sub_grad/Shape_1ShapeY*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
´
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
¤
gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*
_output_shapes
:
]
gradients/sub_grad/NegNeggradients/Square_grad/Mul_1*
T0*
_output_shapes
:
Ł
gradients/sub_grad/Sum_1Sumgradients/sub_grad/Neg*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Sum_1gradients/sub_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
Ë
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape*
_output_shapes
:
Ń
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
_output_shapes
:
¤
gradients/MatMul_18_grad/MatMulBatchMatMulV2+gradients/sub_grad/tuple/control_dependencyout/read*
adj_x( *
adj_y(*
T0*
_output_shapes
:
Ľ
!gradients/MatMul_18_grad/MatMul_1BatchMatMulV2Relu_17+gradients/sub_grad/tuple/control_dependency*
adj_x(*
adj_y( *
T0*
_output_shapes
:
n
gradients/MatMul_18_grad/ShapeShapeRelu_17*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
 gradients/MatMul_18_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
v
,gradients/MatMul_18_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

.gradients/MatMul_18_grad/strided_slice/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
x
.gradients/MatMul_18_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

&gradients/MatMul_18_grad/strided_sliceStridedSlicegradients/MatMul_18_grad/Shape,gradients/MatMul_18_grad/strided_slice/stack.gradients/MatMul_18_grad/strided_slice/stack_1.gradients/MatMul_18_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
.gradients/MatMul_18_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

0gradients/MatMul_18_grad/strided_slice_1/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
z
0gradients/MatMul_18_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

(gradients/MatMul_18_grad/strided_slice_1StridedSlice gradients/MatMul_18_grad/Shape_1.gradients/MatMul_18_grad/strided_slice_1/stack0gradients/MatMul_18_grad/strided_slice_1/stack_10gradients/MatMul_18_grad/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ö
.gradients/MatMul_18_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/MatMul_18_grad/strided_slice(gradients/MatMul_18_grad/strided_slice_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
´
gradients/MatMul_18_grad/SumSumgradients/MatMul_18_grad/MatMul.gradients/MatMul_18_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

 gradients/MatMul_18_grad/ReshapeReshapegradients/MatMul_18_grad/Sumgradients/MatMul_18_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ş
gradients/MatMul_18_grad/Sum_1Sum!gradients/MatMul_18_grad/MatMul_10gradients/MatMul_18_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
§
"gradients/MatMul_18_grad/Reshape_1Reshapegradients/MatMul_18_grad/Sum_1 gradients/MatMul_18_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	
y
)gradients/MatMul_18_grad/tuple/group_depsNoOp!^gradients/MatMul_18_grad/Reshape#^gradients/MatMul_18_grad/Reshape_1
ă
1gradients/MatMul_18_grad/tuple/control_dependencyIdentity gradients/MatMul_18_grad/Reshape*^gradients/MatMul_18_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_18_grad/Reshape*
_output_shapes
:
đ
3gradients/MatMul_18_grad/tuple/control_dependency_1Identity"gradients/MatMul_18_grad/Reshape_1*^gradients/MatMul_18_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/MatMul_18_grad/Reshape_1*
_output_shapes
:	

gradients/Relu_17_grad/ReluGradReluGrad1gradients/MatMul_18_grad/tuple/control_dependencyRelu_17*
T0*
_output_shapes
:

gradients/MatMul_17_grad/MatMulBatchMatMulV2gradients/Relu_17_grad/ReluGradW18/read*
adj_x( *
adj_y(*
T0*
_output_shapes
:

!gradients/MatMul_17_grad/MatMul_1BatchMatMulV2Relu_16gradients/Relu_17_grad/ReluGrad*
adj_x(*
adj_y( *
T0*
_output_shapes
:
n
gradients/MatMul_17_grad/ShapeShapeRelu_16*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
 gradients/MatMul_17_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
v
,gradients/MatMul_17_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

.gradients/MatMul_17_grad/strided_slice/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
x
.gradients/MatMul_17_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

&gradients/MatMul_17_grad/strided_sliceStridedSlicegradients/MatMul_17_grad/Shape,gradients/MatMul_17_grad/strided_slice/stack.gradients/MatMul_17_grad/strided_slice/stack_1.gradients/MatMul_17_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
.gradients/MatMul_17_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

0gradients/MatMul_17_grad/strided_slice_1/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
z
0gradients/MatMul_17_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

(gradients/MatMul_17_grad/strided_slice_1StridedSlice gradients/MatMul_17_grad/Shape_1.gradients/MatMul_17_grad/strided_slice_1/stack0gradients/MatMul_17_grad/strided_slice_1/stack_10gradients/MatMul_17_grad/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ö
.gradients/MatMul_17_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/MatMul_17_grad/strided_slice(gradients/MatMul_17_grad/strided_slice_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
´
gradients/MatMul_17_grad/SumSumgradients/MatMul_17_grad/MatMul.gradients/MatMul_17_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

 gradients/MatMul_17_grad/ReshapeReshapegradients/MatMul_17_grad/Sumgradients/MatMul_17_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ş
gradients/MatMul_17_grad/Sum_1Sum!gradients/MatMul_17_grad/MatMul_10gradients/MatMul_17_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¨
"gradients/MatMul_17_grad/Reshape_1Reshapegradients/MatMul_17_grad/Sum_1 gradients/MatMul_17_grad/Shape_1*
T0*
Tshape0* 
_output_shapes
:

y
)gradients/MatMul_17_grad/tuple/group_depsNoOp!^gradients/MatMul_17_grad/Reshape#^gradients/MatMul_17_grad/Reshape_1
ă
1gradients/MatMul_17_grad/tuple/control_dependencyIdentity gradients/MatMul_17_grad/Reshape*^gradients/MatMul_17_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_17_grad/Reshape*
_output_shapes
:
ń
3gradients/MatMul_17_grad/tuple/control_dependency_1Identity"gradients/MatMul_17_grad/Reshape_1*^gradients/MatMul_17_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/MatMul_17_grad/Reshape_1* 
_output_shapes
:


gradients/Relu_16_grad/ReluGradReluGrad1gradients/MatMul_17_grad/tuple/control_dependencyRelu_16*
T0*
_output_shapes
:

gradients/MatMul_16_grad/MatMulBatchMatMulV2gradients/Relu_16_grad/ReluGradW17/read*
adj_x( *
adj_y(*
T0*
_output_shapes
:

!gradients/MatMul_16_grad/MatMul_1BatchMatMulV2Relu_15gradients/Relu_16_grad/ReluGrad*
adj_x(*
adj_y( *
T0*
_output_shapes
:
n
gradients/MatMul_16_grad/ShapeShapeRelu_15*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
 gradients/MatMul_16_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
v
,gradients/MatMul_16_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

.gradients/MatMul_16_grad/strided_slice/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
x
.gradients/MatMul_16_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

&gradients/MatMul_16_grad/strided_sliceStridedSlicegradients/MatMul_16_grad/Shape,gradients/MatMul_16_grad/strided_slice/stack.gradients/MatMul_16_grad/strided_slice/stack_1.gradients/MatMul_16_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
.gradients/MatMul_16_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

0gradients/MatMul_16_grad/strided_slice_1/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
z
0gradients/MatMul_16_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

(gradients/MatMul_16_grad/strided_slice_1StridedSlice gradients/MatMul_16_grad/Shape_1.gradients/MatMul_16_grad/strided_slice_1/stack0gradients/MatMul_16_grad/strided_slice_1/stack_10gradients/MatMul_16_grad/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ö
.gradients/MatMul_16_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/MatMul_16_grad/strided_slice(gradients/MatMul_16_grad/strided_slice_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
´
gradients/MatMul_16_grad/SumSumgradients/MatMul_16_grad/MatMul.gradients/MatMul_16_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

 gradients/MatMul_16_grad/ReshapeReshapegradients/MatMul_16_grad/Sumgradients/MatMul_16_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ş
gradients/MatMul_16_grad/Sum_1Sum!gradients/MatMul_16_grad/MatMul_10gradients/MatMul_16_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¨
"gradients/MatMul_16_grad/Reshape_1Reshapegradients/MatMul_16_grad/Sum_1 gradients/MatMul_16_grad/Shape_1*
T0*
Tshape0* 
_output_shapes
:

y
)gradients/MatMul_16_grad/tuple/group_depsNoOp!^gradients/MatMul_16_grad/Reshape#^gradients/MatMul_16_grad/Reshape_1
ă
1gradients/MatMul_16_grad/tuple/control_dependencyIdentity gradients/MatMul_16_grad/Reshape*^gradients/MatMul_16_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_16_grad/Reshape*
_output_shapes
:
ń
3gradients/MatMul_16_grad/tuple/control_dependency_1Identity"gradients/MatMul_16_grad/Reshape_1*^gradients/MatMul_16_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/MatMul_16_grad/Reshape_1* 
_output_shapes
:


gradients/Relu_15_grad/ReluGradReluGrad1gradients/MatMul_16_grad/tuple/control_dependencyRelu_15*
T0*
_output_shapes
:

gradients/MatMul_15_grad/MatMulBatchMatMulV2gradients/Relu_15_grad/ReluGradW16/read*
adj_x( *
adj_y(*
T0*
_output_shapes
:

!gradients/MatMul_15_grad/MatMul_1BatchMatMulV2Relu_14gradients/Relu_15_grad/ReluGrad*
adj_x(*
adj_y( *
T0*
_output_shapes
:
n
gradients/MatMul_15_grad/ShapeShapeRelu_14*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
 gradients/MatMul_15_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
v
,gradients/MatMul_15_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

.gradients/MatMul_15_grad/strided_slice/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
x
.gradients/MatMul_15_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

&gradients/MatMul_15_grad/strided_sliceStridedSlicegradients/MatMul_15_grad/Shape,gradients/MatMul_15_grad/strided_slice/stack.gradients/MatMul_15_grad/strided_slice/stack_1.gradients/MatMul_15_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
.gradients/MatMul_15_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

0gradients/MatMul_15_grad/strided_slice_1/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
z
0gradients/MatMul_15_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

(gradients/MatMul_15_grad/strided_slice_1StridedSlice gradients/MatMul_15_grad/Shape_1.gradients/MatMul_15_grad/strided_slice_1/stack0gradients/MatMul_15_grad/strided_slice_1/stack_10gradients/MatMul_15_grad/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ö
.gradients/MatMul_15_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/MatMul_15_grad/strided_slice(gradients/MatMul_15_grad/strided_slice_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
´
gradients/MatMul_15_grad/SumSumgradients/MatMul_15_grad/MatMul.gradients/MatMul_15_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

 gradients/MatMul_15_grad/ReshapeReshapegradients/MatMul_15_grad/Sumgradients/MatMul_15_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ş
gradients/MatMul_15_grad/Sum_1Sum!gradients/MatMul_15_grad/MatMul_10gradients/MatMul_15_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¨
"gradients/MatMul_15_grad/Reshape_1Reshapegradients/MatMul_15_grad/Sum_1 gradients/MatMul_15_grad/Shape_1*
T0*
Tshape0* 
_output_shapes
:

y
)gradients/MatMul_15_grad/tuple/group_depsNoOp!^gradients/MatMul_15_grad/Reshape#^gradients/MatMul_15_grad/Reshape_1
ă
1gradients/MatMul_15_grad/tuple/control_dependencyIdentity gradients/MatMul_15_grad/Reshape*^gradients/MatMul_15_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_15_grad/Reshape*
_output_shapes
:
ń
3gradients/MatMul_15_grad/tuple/control_dependency_1Identity"gradients/MatMul_15_grad/Reshape_1*^gradients/MatMul_15_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/MatMul_15_grad/Reshape_1* 
_output_shapes
:


gradients/Relu_14_grad/ReluGradReluGrad1gradients/MatMul_15_grad/tuple/control_dependencyRelu_14*
T0*
_output_shapes
:

gradients/MatMul_14_grad/MatMulBatchMatMulV2gradients/Relu_14_grad/ReluGradW15/read*
adj_x( *
adj_y(*
T0*
_output_shapes
:

!gradients/MatMul_14_grad/MatMul_1BatchMatMulV2Relu_13gradients/Relu_14_grad/ReluGrad*
adj_x(*
adj_y( *
T0*
_output_shapes
:
n
gradients/MatMul_14_grad/ShapeShapeRelu_13*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
 gradients/MatMul_14_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
v
,gradients/MatMul_14_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

.gradients/MatMul_14_grad/strided_slice/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
x
.gradients/MatMul_14_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

&gradients/MatMul_14_grad/strided_sliceStridedSlicegradients/MatMul_14_grad/Shape,gradients/MatMul_14_grad/strided_slice/stack.gradients/MatMul_14_grad/strided_slice/stack_1.gradients/MatMul_14_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
.gradients/MatMul_14_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

0gradients/MatMul_14_grad/strided_slice_1/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
z
0gradients/MatMul_14_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

(gradients/MatMul_14_grad/strided_slice_1StridedSlice gradients/MatMul_14_grad/Shape_1.gradients/MatMul_14_grad/strided_slice_1/stack0gradients/MatMul_14_grad/strided_slice_1/stack_10gradients/MatMul_14_grad/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ö
.gradients/MatMul_14_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/MatMul_14_grad/strided_slice(gradients/MatMul_14_grad/strided_slice_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
´
gradients/MatMul_14_grad/SumSumgradients/MatMul_14_grad/MatMul.gradients/MatMul_14_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

 gradients/MatMul_14_grad/ReshapeReshapegradients/MatMul_14_grad/Sumgradients/MatMul_14_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ş
gradients/MatMul_14_grad/Sum_1Sum!gradients/MatMul_14_grad/MatMul_10gradients/MatMul_14_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¨
"gradients/MatMul_14_grad/Reshape_1Reshapegradients/MatMul_14_grad/Sum_1 gradients/MatMul_14_grad/Shape_1*
T0*
Tshape0* 
_output_shapes
:

y
)gradients/MatMul_14_grad/tuple/group_depsNoOp!^gradients/MatMul_14_grad/Reshape#^gradients/MatMul_14_grad/Reshape_1
ă
1gradients/MatMul_14_grad/tuple/control_dependencyIdentity gradients/MatMul_14_grad/Reshape*^gradients/MatMul_14_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_14_grad/Reshape*
_output_shapes
:
ń
3gradients/MatMul_14_grad/tuple/control_dependency_1Identity"gradients/MatMul_14_grad/Reshape_1*^gradients/MatMul_14_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/MatMul_14_grad/Reshape_1* 
_output_shapes
:


gradients/Relu_13_grad/ReluGradReluGrad1gradients/MatMul_14_grad/tuple/control_dependencyRelu_13*
T0*
_output_shapes
:

gradients/MatMul_13_grad/MatMulBatchMatMulV2gradients/Relu_13_grad/ReluGradW14/read*
adj_x( *
adj_y(*
T0*
_output_shapes
:

!gradients/MatMul_13_grad/MatMul_1BatchMatMulV2Relu_12gradients/Relu_13_grad/ReluGrad*
adj_x(*
adj_y( *
T0*
_output_shapes
:
n
gradients/MatMul_13_grad/ShapeShapeRelu_12*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
 gradients/MatMul_13_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
v
,gradients/MatMul_13_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

.gradients/MatMul_13_grad/strided_slice/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
x
.gradients/MatMul_13_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

&gradients/MatMul_13_grad/strided_sliceStridedSlicegradients/MatMul_13_grad/Shape,gradients/MatMul_13_grad/strided_slice/stack.gradients/MatMul_13_grad/strided_slice/stack_1.gradients/MatMul_13_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
.gradients/MatMul_13_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

0gradients/MatMul_13_grad/strided_slice_1/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
z
0gradients/MatMul_13_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

(gradients/MatMul_13_grad/strided_slice_1StridedSlice gradients/MatMul_13_grad/Shape_1.gradients/MatMul_13_grad/strided_slice_1/stack0gradients/MatMul_13_grad/strided_slice_1/stack_10gradients/MatMul_13_grad/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ö
.gradients/MatMul_13_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/MatMul_13_grad/strided_slice(gradients/MatMul_13_grad/strided_slice_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
´
gradients/MatMul_13_grad/SumSumgradients/MatMul_13_grad/MatMul.gradients/MatMul_13_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

 gradients/MatMul_13_grad/ReshapeReshapegradients/MatMul_13_grad/Sumgradients/MatMul_13_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ş
gradients/MatMul_13_grad/Sum_1Sum!gradients/MatMul_13_grad/MatMul_10gradients/MatMul_13_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¨
"gradients/MatMul_13_grad/Reshape_1Reshapegradients/MatMul_13_grad/Sum_1 gradients/MatMul_13_grad/Shape_1*
T0*
Tshape0* 
_output_shapes
:

y
)gradients/MatMul_13_grad/tuple/group_depsNoOp!^gradients/MatMul_13_grad/Reshape#^gradients/MatMul_13_grad/Reshape_1
ă
1gradients/MatMul_13_grad/tuple/control_dependencyIdentity gradients/MatMul_13_grad/Reshape*^gradients/MatMul_13_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_13_grad/Reshape*
_output_shapes
:
ń
3gradients/MatMul_13_grad/tuple/control_dependency_1Identity"gradients/MatMul_13_grad/Reshape_1*^gradients/MatMul_13_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/MatMul_13_grad/Reshape_1* 
_output_shapes
:


gradients/Relu_12_grad/ReluGradReluGrad1gradients/MatMul_13_grad/tuple/control_dependencyRelu_12*
T0*
_output_shapes
:

gradients/MatMul_12_grad/MatMulBatchMatMulV2gradients/Relu_12_grad/ReluGradW13/read*
adj_x( *
adj_y(*
T0*
_output_shapes
:

!gradients/MatMul_12_grad/MatMul_1BatchMatMulV2Relu_11gradients/Relu_12_grad/ReluGrad*
adj_x(*
adj_y( *
T0*
_output_shapes
:
n
gradients/MatMul_12_grad/ShapeShapeRelu_11*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
 gradients/MatMul_12_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
v
,gradients/MatMul_12_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

.gradients/MatMul_12_grad/strided_slice/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
x
.gradients/MatMul_12_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

&gradients/MatMul_12_grad/strided_sliceStridedSlicegradients/MatMul_12_grad/Shape,gradients/MatMul_12_grad/strided_slice/stack.gradients/MatMul_12_grad/strided_slice/stack_1.gradients/MatMul_12_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
.gradients/MatMul_12_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

0gradients/MatMul_12_grad/strided_slice_1/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
z
0gradients/MatMul_12_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

(gradients/MatMul_12_grad/strided_slice_1StridedSlice gradients/MatMul_12_grad/Shape_1.gradients/MatMul_12_grad/strided_slice_1/stack0gradients/MatMul_12_grad/strided_slice_1/stack_10gradients/MatMul_12_grad/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ö
.gradients/MatMul_12_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/MatMul_12_grad/strided_slice(gradients/MatMul_12_grad/strided_slice_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
´
gradients/MatMul_12_grad/SumSumgradients/MatMul_12_grad/MatMul.gradients/MatMul_12_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

 gradients/MatMul_12_grad/ReshapeReshapegradients/MatMul_12_grad/Sumgradients/MatMul_12_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ş
gradients/MatMul_12_grad/Sum_1Sum!gradients/MatMul_12_grad/MatMul_10gradients/MatMul_12_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¨
"gradients/MatMul_12_grad/Reshape_1Reshapegradients/MatMul_12_grad/Sum_1 gradients/MatMul_12_grad/Shape_1*
T0*
Tshape0* 
_output_shapes
:

y
)gradients/MatMul_12_grad/tuple/group_depsNoOp!^gradients/MatMul_12_grad/Reshape#^gradients/MatMul_12_grad/Reshape_1
ă
1gradients/MatMul_12_grad/tuple/control_dependencyIdentity gradients/MatMul_12_grad/Reshape*^gradients/MatMul_12_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_12_grad/Reshape*
_output_shapes
:
ń
3gradients/MatMul_12_grad/tuple/control_dependency_1Identity"gradients/MatMul_12_grad/Reshape_1*^gradients/MatMul_12_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/MatMul_12_grad/Reshape_1* 
_output_shapes
:


gradients/Relu_11_grad/ReluGradReluGrad1gradients/MatMul_12_grad/tuple/control_dependencyRelu_11*
T0*
_output_shapes
:

gradients/MatMul_11_grad/MatMulBatchMatMulV2gradients/Relu_11_grad/ReluGradW12/read*
adj_x( *
adj_y(*
T0*
_output_shapes
:

!gradients/MatMul_11_grad/MatMul_1BatchMatMulV2Relu_10gradients/Relu_11_grad/ReluGrad*
adj_x(*
adj_y( *
T0*
_output_shapes
:
n
gradients/MatMul_11_grad/ShapeShapeRelu_10*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
 gradients/MatMul_11_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
v
,gradients/MatMul_11_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

.gradients/MatMul_11_grad/strided_slice/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
x
.gradients/MatMul_11_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

&gradients/MatMul_11_grad/strided_sliceStridedSlicegradients/MatMul_11_grad/Shape,gradients/MatMul_11_grad/strided_slice/stack.gradients/MatMul_11_grad/strided_slice/stack_1.gradients/MatMul_11_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
.gradients/MatMul_11_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

0gradients/MatMul_11_grad/strided_slice_1/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
z
0gradients/MatMul_11_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

(gradients/MatMul_11_grad/strided_slice_1StridedSlice gradients/MatMul_11_grad/Shape_1.gradients/MatMul_11_grad/strided_slice_1/stack0gradients/MatMul_11_grad/strided_slice_1/stack_10gradients/MatMul_11_grad/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ö
.gradients/MatMul_11_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/MatMul_11_grad/strided_slice(gradients/MatMul_11_grad/strided_slice_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
´
gradients/MatMul_11_grad/SumSumgradients/MatMul_11_grad/MatMul.gradients/MatMul_11_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

 gradients/MatMul_11_grad/ReshapeReshapegradients/MatMul_11_grad/Sumgradients/MatMul_11_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ş
gradients/MatMul_11_grad/Sum_1Sum!gradients/MatMul_11_grad/MatMul_10gradients/MatMul_11_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¨
"gradients/MatMul_11_grad/Reshape_1Reshapegradients/MatMul_11_grad/Sum_1 gradients/MatMul_11_grad/Shape_1*
T0*
Tshape0* 
_output_shapes
:

y
)gradients/MatMul_11_grad/tuple/group_depsNoOp!^gradients/MatMul_11_grad/Reshape#^gradients/MatMul_11_grad/Reshape_1
ă
1gradients/MatMul_11_grad/tuple/control_dependencyIdentity gradients/MatMul_11_grad/Reshape*^gradients/MatMul_11_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_11_grad/Reshape*
_output_shapes
:
ń
3gradients/MatMul_11_grad/tuple/control_dependency_1Identity"gradients/MatMul_11_grad/Reshape_1*^gradients/MatMul_11_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/MatMul_11_grad/Reshape_1* 
_output_shapes
:


gradients/Relu_10_grad/ReluGradReluGrad1gradients/MatMul_11_grad/tuple/control_dependencyRelu_10*
T0*
_output_shapes
:

gradients/MatMul_10_grad/MatMulBatchMatMulV2gradients/Relu_10_grad/ReluGradW11/read*
adj_x( *
adj_y(*
T0*
_output_shapes
:

!gradients/MatMul_10_grad/MatMul_1BatchMatMulV2Relu_9gradients/Relu_10_grad/ReluGrad*
adj_x(*
adj_y( *
T0*
_output_shapes
:
m
gradients/MatMul_10_grad/ShapeShapeRelu_9*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
 gradients/MatMul_10_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
v
,gradients/MatMul_10_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

.gradients/MatMul_10_grad/strided_slice/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
x
.gradients/MatMul_10_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

&gradients/MatMul_10_grad/strided_sliceStridedSlicegradients/MatMul_10_grad/Shape,gradients/MatMul_10_grad/strided_slice/stack.gradients/MatMul_10_grad/strided_slice/stack_1.gradients/MatMul_10_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
.gradients/MatMul_10_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

0gradients/MatMul_10_grad/strided_slice_1/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
z
0gradients/MatMul_10_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

(gradients/MatMul_10_grad/strided_slice_1StridedSlice gradients/MatMul_10_grad/Shape_1.gradients/MatMul_10_grad/strided_slice_1/stack0gradients/MatMul_10_grad/strided_slice_1/stack_10gradients/MatMul_10_grad/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ö
.gradients/MatMul_10_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/MatMul_10_grad/strided_slice(gradients/MatMul_10_grad/strided_slice_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
´
gradients/MatMul_10_grad/SumSumgradients/MatMul_10_grad/MatMul.gradients/MatMul_10_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

 gradients/MatMul_10_grad/ReshapeReshapegradients/MatMul_10_grad/Sumgradients/MatMul_10_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ş
gradients/MatMul_10_grad/Sum_1Sum!gradients/MatMul_10_grad/MatMul_10gradients/MatMul_10_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¨
"gradients/MatMul_10_grad/Reshape_1Reshapegradients/MatMul_10_grad/Sum_1 gradients/MatMul_10_grad/Shape_1*
T0*
Tshape0* 
_output_shapes
:

y
)gradients/MatMul_10_grad/tuple/group_depsNoOp!^gradients/MatMul_10_grad/Reshape#^gradients/MatMul_10_grad/Reshape_1
ă
1gradients/MatMul_10_grad/tuple/control_dependencyIdentity gradients/MatMul_10_grad/Reshape*^gradients/MatMul_10_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_10_grad/Reshape*
_output_shapes
:
ń
3gradients/MatMul_10_grad/tuple/control_dependency_1Identity"gradients/MatMul_10_grad/Reshape_1*^gradients/MatMul_10_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/MatMul_10_grad/Reshape_1* 
_output_shapes
:


gradients/Relu_9_grad/ReluGradReluGrad1gradients/MatMul_10_grad/tuple/control_dependencyRelu_9*
T0*
_output_shapes
:

gradients/MatMul_9_grad/MatMulBatchMatMulV2gradients/Relu_9_grad/ReluGradW10/read*
adj_x( *
adj_y(*
T0*
_output_shapes
:

 gradients/MatMul_9_grad/MatMul_1BatchMatMulV2Relu_8gradients/Relu_9_grad/ReluGrad*
adj_x(*
adj_y( *
T0*
_output_shapes
:
l
gradients/MatMul_9_grad/ShapeShapeRelu_8*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
gradients/MatMul_9_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
u
+gradients/MatMul_9_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

-gradients/MatMul_9_grad/strided_slice/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
w
-gradients/MatMul_9_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ţ
%gradients/MatMul_9_grad/strided_sliceStridedSlicegradients/MatMul_9_grad/Shape+gradients/MatMul_9_grad/strided_slice/stack-gradients/MatMul_9_grad/strided_slice/stack_1-gradients/MatMul_9_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
-gradients/MatMul_9_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

/gradients/MatMul_9_grad/strided_slice_1/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
y
/gradients/MatMul_9_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ý
'gradients/MatMul_9_grad/strided_slice_1StridedSlicegradients/MatMul_9_grad/Shape_1-gradients/MatMul_9_grad/strided_slice_1/stack/gradients/MatMul_9_grad/strided_slice_1/stack_1/gradients/MatMul_9_grad/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ó
-gradients/MatMul_9_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/MatMul_9_grad/strided_slice'gradients/MatMul_9_grad/strided_slice_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ą
gradients/MatMul_9_grad/SumSumgradients/MatMul_9_grad/MatMul-gradients/MatMul_9_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/MatMul_9_grad/ReshapeReshapegradients/MatMul_9_grad/Sumgradients/MatMul_9_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ˇ
gradients/MatMul_9_grad/Sum_1Sum gradients/MatMul_9_grad/MatMul_1/gradients/MatMul_9_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ľ
!gradients/MatMul_9_grad/Reshape_1Reshapegradients/MatMul_9_grad/Sum_1gradients/MatMul_9_grad/Shape_1*
T0*
Tshape0* 
_output_shapes
:

v
(gradients/MatMul_9_grad/tuple/group_depsNoOp ^gradients/MatMul_9_grad/Reshape"^gradients/MatMul_9_grad/Reshape_1
ß
0gradients/MatMul_9_grad/tuple/control_dependencyIdentitygradients/MatMul_9_grad/Reshape)^gradients/MatMul_9_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/MatMul_9_grad/Reshape*
_output_shapes
:
í
2gradients/MatMul_9_grad/tuple/control_dependency_1Identity!gradients/MatMul_9_grad/Reshape_1)^gradients/MatMul_9_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/MatMul_9_grad/Reshape_1* 
_output_shapes
:


gradients/Relu_8_grad/ReluGradReluGrad0gradients/MatMul_9_grad/tuple/control_dependencyRelu_8*
T0*
_output_shapes
:

gradients/MatMul_8_grad/MatMulBatchMatMulV2gradients/Relu_8_grad/ReluGradW9/read*
adj_x( *
adj_y(*
T0*
_output_shapes
:

 gradients/MatMul_8_grad/MatMul_1BatchMatMulV2Relu_7gradients/Relu_8_grad/ReluGrad*
adj_x(*
adj_y( *
T0*
_output_shapes
:
l
gradients/MatMul_8_grad/ShapeShapeRelu_7*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
gradients/MatMul_8_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
u
+gradients/MatMul_8_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

-gradients/MatMul_8_grad/strided_slice/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
w
-gradients/MatMul_8_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ţ
%gradients/MatMul_8_grad/strided_sliceStridedSlicegradients/MatMul_8_grad/Shape+gradients/MatMul_8_grad/strided_slice/stack-gradients/MatMul_8_grad/strided_slice/stack_1-gradients/MatMul_8_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
-gradients/MatMul_8_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

/gradients/MatMul_8_grad/strided_slice_1/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
y
/gradients/MatMul_8_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ý
'gradients/MatMul_8_grad/strided_slice_1StridedSlicegradients/MatMul_8_grad/Shape_1-gradients/MatMul_8_grad/strided_slice_1/stack/gradients/MatMul_8_grad/strided_slice_1/stack_1/gradients/MatMul_8_grad/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ó
-gradients/MatMul_8_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/MatMul_8_grad/strided_slice'gradients/MatMul_8_grad/strided_slice_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ą
gradients/MatMul_8_grad/SumSumgradients/MatMul_8_grad/MatMul-gradients/MatMul_8_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/MatMul_8_grad/ReshapeReshapegradients/MatMul_8_grad/Sumgradients/MatMul_8_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ˇ
gradients/MatMul_8_grad/Sum_1Sum gradients/MatMul_8_grad/MatMul_1/gradients/MatMul_8_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ľ
!gradients/MatMul_8_grad/Reshape_1Reshapegradients/MatMul_8_grad/Sum_1gradients/MatMul_8_grad/Shape_1*
T0*
Tshape0* 
_output_shapes
:

v
(gradients/MatMul_8_grad/tuple/group_depsNoOp ^gradients/MatMul_8_grad/Reshape"^gradients/MatMul_8_grad/Reshape_1
ß
0gradients/MatMul_8_grad/tuple/control_dependencyIdentitygradients/MatMul_8_grad/Reshape)^gradients/MatMul_8_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/MatMul_8_grad/Reshape*
_output_shapes
:
í
2gradients/MatMul_8_grad/tuple/control_dependency_1Identity!gradients/MatMul_8_grad/Reshape_1)^gradients/MatMul_8_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/MatMul_8_grad/Reshape_1* 
_output_shapes
:


gradients/Relu_7_grad/ReluGradReluGrad0gradients/MatMul_8_grad/tuple/control_dependencyRelu_7*
T0*
_output_shapes
:

gradients/MatMul_7_grad/MatMulBatchMatMulV2gradients/Relu_7_grad/ReluGradW8/read*
adj_x( *
adj_y(*
T0*
_output_shapes
:

 gradients/MatMul_7_grad/MatMul_1BatchMatMulV2Relu_6gradients/Relu_7_grad/ReluGrad*
adj_x(*
adj_y( *
T0*
_output_shapes
:
l
gradients/MatMul_7_grad/ShapeShapeRelu_6*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
gradients/MatMul_7_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
u
+gradients/MatMul_7_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

-gradients/MatMul_7_grad/strided_slice/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
w
-gradients/MatMul_7_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ţ
%gradients/MatMul_7_grad/strided_sliceStridedSlicegradients/MatMul_7_grad/Shape+gradients/MatMul_7_grad/strided_slice/stack-gradients/MatMul_7_grad/strided_slice/stack_1-gradients/MatMul_7_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
-gradients/MatMul_7_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

/gradients/MatMul_7_grad/strided_slice_1/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
y
/gradients/MatMul_7_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ý
'gradients/MatMul_7_grad/strided_slice_1StridedSlicegradients/MatMul_7_grad/Shape_1-gradients/MatMul_7_grad/strided_slice_1/stack/gradients/MatMul_7_grad/strided_slice_1/stack_1/gradients/MatMul_7_grad/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ó
-gradients/MatMul_7_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/MatMul_7_grad/strided_slice'gradients/MatMul_7_grad/strided_slice_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ą
gradients/MatMul_7_grad/SumSumgradients/MatMul_7_grad/MatMul-gradients/MatMul_7_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/MatMul_7_grad/ReshapeReshapegradients/MatMul_7_grad/Sumgradients/MatMul_7_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ˇ
gradients/MatMul_7_grad/Sum_1Sum gradients/MatMul_7_grad/MatMul_1/gradients/MatMul_7_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ľ
!gradients/MatMul_7_grad/Reshape_1Reshapegradients/MatMul_7_grad/Sum_1gradients/MatMul_7_grad/Shape_1*
T0*
Tshape0* 
_output_shapes
:

v
(gradients/MatMul_7_grad/tuple/group_depsNoOp ^gradients/MatMul_7_grad/Reshape"^gradients/MatMul_7_grad/Reshape_1
ß
0gradients/MatMul_7_grad/tuple/control_dependencyIdentitygradients/MatMul_7_grad/Reshape)^gradients/MatMul_7_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/MatMul_7_grad/Reshape*
_output_shapes
:
í
2gradients/MatMul_7_grad/tuple/control_dependency_1Identity!gradients/MatMul_7_grad/Reshape_1)^gradients/MatMul_7_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/MatMul_7_grad/Reshape_1* 
_output_shapes
:


gradients/Relu_6_grad/ReluGradReluGrad0gradients/MatMul_7_grad/tuple/control_dependencyRelu_6*
T0*
_output_shapes
:

gradients/MatMul_6_grad/MatMulBatchMatMulV2gradients/Relu_6_grad/ReluGradW7/read*
adj_x( *
adj_y(*
T0*
_output_shapes
:

 gradients/MatMul_6_grad/MatMul_1BatchMatMulV2Relu_5gradients/Relu_6_grad/ReluGrad*
adj_x(*
adj_y( *
T0*
_output_shapes
:
l
gradients/MatMul_6_grad/ShapeShapeRelu_5*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
gradients/MatMul_6_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
u
+gradients/MatMul_6_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

-gradients/MatMul_6_grad/strided_slice/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
w
-gradients/MatMul_6_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ţ
%gradients/MatMul_6_grad/strided_sliceStridedSlicegradients/MatMul_6_grad/Shape+gradients/MatMul_6_grad/strided_slice/stack-gradients/MatMul_6_grad/strided_slice/stack_1-gradients/MatMul_6_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
-gradients/MatMul_6_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

/gradients/MatMul_6_grad/strided_slice_1/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
y
/gradients/MatMul_6_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ý
'gradients/MatMul_6_grad/strided_slice_1StridedSlicegradients/MatMul_6_grad/Shape_1-gradients/MatMul_6_grad/strided_slice_1/stack/gradients/MatMul_6_grad/strided_slice_1/stack_1/gradients/MatMul_6_grad/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ó
-gradients/MatMul_6_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/MatMul_6_grad/strided_slice'gradients/MatMul_6_grad/strided_slice_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ą
gradients/MatMul_6_grad/SumSumgradients/MatMul_6_grad/MatMul-gradients/MatMul_6_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/MatMul_6_grad/ReshapeReshapegradients/MatMul_6_grad/Sumgradients/MatMul_6_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ˇ
gradients/MatMul_6_grad/Sum_1Sum gradients/MatMul_6_grad/MatMul_1/gradients/MatMul_6_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ľ
!gradients/MatMul_6_grad/Reshape_1Reshapegradients/MatMul_6_grad/Sum_1gradients/MatMul_6_grad/Shape_1*
T0*
Tshape0* 
_output_shapes
:

v
(gradients/MatMul_6_grad/tuple/group_depsNoOp ^gradients/MatMul_6_grad/Reshape"^gradients/MatMul_6_grad/Reshape_1
ß
0gradients/MatMul_6_grad/tuple/control_dependencyIdentitygradients/MatMul_6_grad/Reshape)^gradients/MatMul_6_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/MatMul_6_grad/Reshape*
_output_shapes
:
í
2gradients/MatMul_6_grad/tuple/control_dependency_1Identity!gradients/MatMul_6_grad/Reshape_1)^gradients/MatMul_6_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/MatMul_6_grad/Reshape_1* 
_output_shapes
:


gradients/Relu_5_grad/ReluGradReluGrad0gradients/MatMul_6_grad/tuple/control_dependencyRelu_5*
T0*
_output_shapes
:

gradients/MatMul_5_grad/MatMulBatchMatMulV2gradients/Relu_5_grad/ReluGradW6/read*
adj_x( *
adj_y(*
T0*
_output_shapes
:

 gradients/MatMul_5_grad/MatMul_1BatchMatMulV2Relu_4gradients/Relu_5_grad/ReluGrad*
adj_x(*
adj_y( *
T0*
_output_shapes
:
l
gradients/MatMul_5_grad/ShapeShapeRelu_4*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
gradients/MatMul_5_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
u
+gradients/MatMul_5_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

-gradients/MatMul_5_grad/strided_slice/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
w
-gradients/MatMul_5_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ţ
%gradients/MatMul_5_grad/strided_sliceStridedSlicegradients/MatMul_5_grad/Shape+gradients/MatMul_5_grad/strided_slice/stack-gradients/MatMul_5_grad/strided_slice/stack_1-gradients/MatMul_5_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
-gradients/MatMul_5_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

/gradients/MatMul_5_grad/strided_slice_1/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
y
/gradients/MatMul_5_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ý
'gradients/MatMul_5_grad/strided_slice_1StridedSlicegradients/MatMul_5_grad/Shape_1-gradients/MatMul_5_grad/strided_slice_1/stack/gradients/MatMul_5_grad/strided_slice_1/stack_1/gradients/MatMul_5_grad/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ó
-gradients/MatMul_5_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/MatMul_5_grad/strided_slice'gradients/MatMul_5_grad/strided_slice_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ą
gradients/MatMul_5_grad/SumSumgradients/MatMul_5_grad/MatMul-gradients/MatMul_5_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/MatMul_5_grad/ReshapeReshapegradients/MatMul_5_grad/Sumgradients/MatMul_5_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ˇ
gradients/MatMul_5_grad/Sum_1Sum gradients/MatMul_5_grad/MatMul_1/gradients/MatMul_5_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ľ
!gradients/MatMul_5_grad/Reshape_1Reshapegradients/MatMul_5_grad/Sum_1gradients/MatMul_5_grad/Shape_1*
T0*
Tshape0* 
_output_shapes
:

v
(gradients/MatMul_5_grad/tuple/group_depsNoOp ^gradients/MatMul_5_grad/Reshape"^gradients/MatMul_5_grad/Reshape_1
ß
0gradients/MatMul_5_grad/tuple/control_dependencyIdentitygradients/MatMul_5_grad/Reshape)^gradients/MatMul_5_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/MatMul_5_grad/Reshape*
_output_shapes
:
í
2gradients/MatMul_5_grad/tuple/control_dependency_1Identity!gradients/MatMul_5_grad/Reshape_1)^gradients/MatMul_5_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/MatMul_5_grad/Reshape_1* 
_output_shapes
:


gradients/Relu_4_grad/ReluGradReluGrad0gradients/MatMul_5_grad/tuple/control_dependencyRelu_4*
T0*
_output_shapes
:

gradients/MatMul_4_grad/MatMulBatchMatMulV2gradients/Relu_4_grad/ReluGradW5/read*
adj_x( *
adj_y(*
T0*
_output_shapes
:

 gradients/MatMul_4_grad/MatMul_1BatchMatMulV2Relu_3gradients/Relu_4_grad/ReluGrad*
adj_x(*
adj_y( *
T0*
_output_shapes
:
l
gradients/MatMul_4_grad/ShapeShapeRelu_3*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
gradients/MatMul_4_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
u
+gradients/MatMul_4_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

-gradients/MatMul_4_grad/strided_slice/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
w
-gradients/MatMul_4_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ţ
%gradients/MatMul_4_grad/strided_sliceStridedSlicegradients/MatMul_4_grad/Shape+gradients/MatMul_4_grad/strided_slice/stack-gradients/MatMul_4_grad/strided_slice/stack_1-gradients/MatMul_4_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
-gradients/MatMul_4_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

/gradients/MatMul_4_grad/strided_slice_1/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
y
/gradients/MatMul_4_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ý
'gradients/MatMul_4_grad/strided_slice_1StridedSlicegradients/MatMul_4_grad/Shape_1-gradients/MatMul_4_grad/strided_slice_1/stack/gradients/MatMul_4_grad/strided_slice_1/stack_1/gradients/MatMul_4_grad/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ó
-gradients/MatMul_4_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/MatMul_4_grad/strided_slice'gradients/MatMul_4_grad/strided_slice_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ą
gradients/MatMul_4_grad/SumSumgradients/MatMul_4_grad/MatMul-gradients/MatMul_4_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/MatMul_4_grad/ReshapeReshapegradients/MatMul_4_grad/Sumgradients/MatMul_4_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ˇ
gradients/MatMul_4_grad/Sum_1Sum gradients/MatMul_4_grad/MatMul_1/gradients/MatMul_4_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ľ
!gradients/MatMul_4_grad/Reshape_1Reshapegradients/MatMul_4_grad/Sum_1gradients/MatMul_4_grad/Shape_1*
T0*
Tshape0* 
_output_shapes
:

v
(gradients/MatMul_4_grad/tuple/group_depsNoOp ^gradients/MatMul_4_grad/Reshape"^gradients/MatMul_4_grad/Reshape_1
ß
0gradients/MatMul_4_grad/tuple/control_dependencyIdentitygradients/MatMul_4_grad/Reshape)^gradients/MatMul_4_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/MatMul_4_grad/Reshape*
_output_shapes
:
í
2gradients/MatMul_4_grad/tuple/control_dependency_1Identity!gradients/MatMul_4_grad/Reshape_1)^gradients/MatMul_4_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/MatMul_4_grad/Reshape_1* 
_output_shapes
:


gradients/Relu_3_grad/ReluGradReluGrad0gradients/MatMul_4_grad/tuple/control_dependencyRelu_3*
T0*
_output_shapes
:

gradients/MatMul_3_grad/MatMulBatchMatMulV2gradients/Relu_3_grad/ReluGradW4/read*
adj_x( *
adj_y(*
T0*
_output_shapes
:

 gradients/MatMul_3_grad/MatMul_1BatchMatMulV2Relu_2gradients/Relu_3_grad/ReluGrad*
adj_x(*
adj_y( *
T0*
_output_shapes
:
l
gradients/MatMul_3_grad/ShapeShapeRelu_2*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
gradients/MatMul_3_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
u
+gradients/MatMul_3_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

-gradients/MatMul_3_grad/strided_slice/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
w
-gradients/MatMul_3_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ţ
%gradients/MatMul_3_grad/strided_sliceStridedSlicegradients/MatMul_3_grad/Shape+gradients/MatMul_3_grad/strided_slice/stack-gradients/MatMul_3_grad/strided_slice/stack_1-gradients/MatMul_3_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
-gradients/MatMul_3_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

/gradients/MatMul_3_grad/strided_slice_1/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
y
/gradients/MatMul_3_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ý
'gradients/MatMul_3_grad/strided_slice_1StridedSlicegradients/MatMul_3_grad/Shape_1-gradients/MatMul_3_grad/strided_slice_1/stack/gradients/MatMul_3_grad/strided_slice_1/stack_1/gradients/MatMul_3_grad/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ó
-gradients/MatMul_3_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/MatMul_3_grad/strided_slice'gradients/MatMul_3_grad/strided_slice_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ą
gradients/MatMul_3_grad/SumSumgradients/MatMul_3_grad/MatMul-gradients/MatMul_3_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/MatMul_3_grad/ReshapeReshapegradients/MatMul_3_grad/Sumgradients/MatMul_3_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ˇ
gradients/MatMul_3_grad/Sum_1Sum gradients/MatMul_3_grad/MatMul_1/gradients/MatMul_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ľ
!gradients/MatMul_3_grad/Reshape_1Reshapegradients/MatMul_3_grad/Sum_1gradients/MatMul_3_grad/Shape_1*
T0*
Tshape0* 
_output_shapes
:

v
(gradients/MatMul_3_grad/tuple/group_depsNoOp ^gradients/MatMul_3_grad/Reshape"^gradients/MatMul_3_grad/Reshape_1
ß
0gradients/MatMul_3_grad/tuple/control_dependencyIdentitygradients/MatMul_3_grad/Reshape)^gradients/MatMul_3_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/MatMul_3_grad/Reshape*
_output_shapes
:
í
2gradients/MatMul_3_grad/tuple/control_dependency_1Identity!gradients/MatMul_3_grad/Reshape_1)^gradients/MatMul_3_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/MatMul_3_grad/Reshape_1* 
_output_shapes
:


gradients/Relu_2_grad/ReluGradReluGrad0gradients/MatMul_3_grad/tuple/control_dependencyRelu_2*
T0*
_output_shapes
:

gradients/MatMul_2_grad/MatMulBatchMatMulV2gradients/Relu_2_grad/ReluGradW3/read*
adj_x( *
adj_y(*
T0*
_output_shapes
:

 gradients/MatMul_2_grad/MatMul_1BatchMatMulV2Relu_1gradients/Relu_2_grad/ReluGrad*
adj_x(*
adj_y( *
T0*
_output_shapes
:
l
gradients/MatMul_2_grad/ShapeShapeRelu_1*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
gradients/MatMul_2_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
u
+gradients/MatMul_2_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

-gradients/MatMul_2_grad/strided_slice/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
w
-gradients/MatMul_2_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ţ
%gradients/MatMul_2_grad/strided_sliceStridedSlicegradients/MatMul_2_grad/Shape+gradients/MatMul_2_grad/strided_slice/stack-gradients/MatMul_2_grad/strided_slice/stack_1-gradients/MatMul_2_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
-gradients/MatMul_2_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

/gradients/MatMul_2_grad/strided_slice_1/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
y
/gradients/MatMul_2_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ý
'gradients/MatMul_2_grad/strided_slice_1StridedSlicegradients/MatMul_2_grad/Shape_1-gradients/MatMul_2_grad/strided_slice_1/stack/gradients/MatMul_2_grad/strided_slice_1/stack_1/gradients/MatMul_2_grad/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ó
-gradients/MatMul_2_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/MatMul_2_grad/strided_slice'gradients/MatMul_2_grad/strided_slice_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ą
gradients/MatMul_2_grad/SumSumgradients/MatMul_2_grad/MatMul-gradients/MatMul_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/MatMul_2_grad/ReshapeReshapegradients/MatMul_2_grad/Sumgradients/MatMul_2_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ˇ
gradients/MatMul_2_grad/Sum_1Sum gradients/MatMul_2_grad/MatMul_1/gradients/MatMul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ľ
!gradients/MatMul_2_grad/Reshape_1Reshapegradients/MatMul_2_grad/Sum_1gradients/MatMul_2_grad/Shape_1*
T0*
Tshape0* 
_output_shapes
:

v
(gradients/MatMul_2_grad/tuple/group_depsNoOp ^gradients/MatMul_2_grad/Reshape"^gradients/MatMul_2_grad/Reshape_1
ß
0gradients/MatMul_2_grad/tuple/control_dependencyIdentitygradients/MatMul_2_grad/Reshape)^gradients/MatMul_2_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/MatMul_2_grad/Reshape*
_output_shapes
:
í
2gradients/MatMul_2_grad/tuple/control_dependency_1Identity!gradients/MatMul_2_grad/Reshape_1)^gradients/MatMul_2_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/MatMul_2_grad/Reshape_1* 
_output_shapes
:


gradients/Relu_1_grad/ReluGradReluGrad0gradients/MatMul_2_grad/tuple/control_dependencyRelu_1*
T0*
_output_shapes
:

gradients/MatMul_1_grad/MatMulBatchMatMulV2gradients/Relu_1_grad/ReluGradW2/read*
adj_x( *
adj_y(*
T0*
_output_shapes
:

 gradients/MatMul_1_grad/MatMul_1BatchMatMulV2Relugradients/Relu_1_grad/ReluGrad*
adj_x(*
adj_y( *
T0*
_output_shapes
:
j
gradients/MatMul_1_grad/ShapeShapeRelu*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
gradients/MatMul_1_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
u
+gradients/MatMul_1_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

-gradients/MatMul_1_grad/strided_slice/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
w
-gradients/MatMul_1_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ţ
%gradients/MatMul_1_grad/strided_sliceStridedSlicegradients/MatMul_1_grad/Shape+gradients/MatMul_1_grad/strided_slice/stack-gradients/MatMul_1_grad/strided_slice/stack_1-gradients/MatMul_1_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
-gradients/MatMul_1_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

/gradients/MatMul_1_grad/strided_slice_1/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
y
/gradients/MatMul_1_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ý
'gradients/MatMul_1_grad/strided_slice_1StridedSlicegradients/MatMul_1_grad/Shape_1-gradients/MatMul_1_grad/strided_slice_1/stack/gradients/MatMul_1_grad/strided_slice_1/stack_1/gradients/MatMul_1_grad/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ó
-gradients/MatMul_1_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/MatMul_1_grad/strided_slice'gradients/MatMul_1_grad/strided_slice_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ą
gradients/MatMul_1_grad/SumSumgradients/MatMul_1_grad/MatMul-gradients/MatMul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/MatMul_1_grad/ReshapeReshapegradients/MatMul_1_grad/Sumgradients/MatMul_1_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ˇ
gradients/MatMul_1_grad/Sum_1Sum gradients/MatMul_1_grad/MatMul_1/gradients/MatMul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ľ
!gradients/MatMul_1_grad/Reshape_1Reshapegradients/MatMul_1_grad/Sum_1gradients/MatMul_1_grad/Shape_1*
T0*
Tshape0* 
_output_shapes
:

v
(gradients/MatMul_1_grad/tuple/group_depsNoOp ^gradients/MatMul_1_grad/Reshape"^gradients/MatMul_1_grad/Reshape_1
ß
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/Reshape)^gradients/MatMul_1_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/MatMul_1_grad/Reshape*
_output_shapes
:
í
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity!gradients/MatMul_1_grad/Reshape_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/MatMul_1_grad/Reshape_1* 
_output_shapes
:


gradients/Relu_grad/ReluGradReluGrad0gradients/MatMul_1_grad/tuple/control_dependencyRelu*
T0*
_output_shapes
:

gradients/MatMul_grad/MatMulBatchMatMulV2gradients/Relu_grad/ReluGradW1/read*
adj_x( *
adj_y(*
T0*
_output_shapes
:

gradients/MatMul_grad/MatMul_1BatchMatMulV2Xgradients/Relu_grad/ReluGrad*
adj_x(*
adj_y( *
T0*
_output_shapes
:
e
gradients/MatMul_grad/ShapeShapeX*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
gradients/MatMul_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
s
)gradients/MatMul_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
~
+gradients/MatMul_grad/strided_slice/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
u
+gradients/MatMul_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ô
#gradients/MatMul_grad/strided_sliceStridedSlicegradients/MatMul_grad/Shape)gradients/MatMul_grad/strided_slice/stack+gradients/MatMul_grad/strided_slice/stack_1+gradients/MatMul_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
+gradients/MatMul_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

-gradients/MatMul_grad/strided_slice_1/stack_1Const*
valueB:
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
w
-gradients/MatMul_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ó
%gradients/MatMul_grad/strided_slice_1StridedSlicegradients/MatMul_grad/Shape_1+gradients/MatMul_grad/strided_slice_1/stack-gradients/MatMul_grad/strided_slice_1/stack_1-gradients/MatMul_grad/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Í
+gradients/MatMul_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/MatMul_grad/strided_slice%gradients/MatMul_grad/strided_slice_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ť
gradients/MatMul_grad/SumSumgradients/MatMul_grad/MatMul+gradients/MatMul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/MatMul_grad/ReshapeReshapegradients/MatMul_grad/Sumgradients/MatMul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ą
gradients/MatMul_grad/Sum_1Sumgradients/MatMul_grad/MatMul_1-gradients/MatMul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/MatMul_grad/Reshape_1Reshapegradients/MatMul_grad/Sum_1gradients/MatMul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	
p
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/Reshape ^gradients/MatMul_grad/Reshape_1
×
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/Reshape'^gradients/MatMul_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/MatMul_grad/Reshape*
_output_shapes
:
ä
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/Reshape_1'^gradients/MatMul_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/MatMul_grad/Reshape_1*
_output_shapes
:	
b
GradientDescent/learning_rateConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
ď
.GradientDescent/update_W1/ApplyGradientDescentApplyGradientDescentW1GradientDescent/learning_rate0gradients/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
	loc:@W1*
_output_shapes
:	
ň
.GradientDescent/update_W2/ApplyGradientDescentApplyGradientDescentW2GradientDescent/learning_rate2gradients/MatMul_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
	loc:@W2* 
_output_shapes
:

ň
.GradientDescent/update_W3/ApplyGradientDescentApplyGradientDescentW3GradientDescent/learning_rate2gradients/MatMul_2_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
	loc:@W3* 
_output_shapes
:

ň
.GradientDescent/update_W4/ApplyGradientDescentApplyGradientDescentW4GradientDescent/learning_rate2gradients/MatMul_3_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
	loc:@W4* 
_output_shapes
:

ň
.GradientDescent/update_W5/ApplyGradientDescentApplyGradientDescentW5GradientDescent/learning_rate2gradients/MatMul_4_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
	loc:@W5* 
_output_shapes
:

ň
.GradientDescent/update_W6/ApplyGradientDescentApplyGradientDescentW6GradientDescent/learning_rate2gradients/MatMul_5_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
	loc:@W6* 
_output_shapes
:

ň
.GradientDescent/update_W7/ApplyGradientDescentApplyGradientDescentW7GradientDescent/learning_rate2gradients/MatMul_6_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
	loc:@W7* 
_output_shapes
:

ň
.GradientDescent/update_W8/ApplyGradientDescentApplyGradientDescentW8GradientDescent/learning_rate2gradients/MatMul_7_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
	loc:@W8* 
_output_shapes
:

ň
.GradientDescent/update_W9/ApplyGradientDescentApplyGradientDescentW9GradientDescent/learning_rate2gradients/MatMul_8_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
	loc:@W9* 
_output_shapes
:

ő
/GradientDescent/update_W10/ApplyGradientDescentApplyGradientDescentW10GradientDescent/learning_rate2gradients/MatMul_9_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@W10* 
_output_shapes
:

ö
/GradientDescent/update_W11/ApplyGradientDescentApplyGradientDescentW11GradientDescent/learning_rate3gradients/MatMul_10_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@W11* 
_output_shapes
:

ö
/GradientDescent/update_W12/ApplyGradientDescentApplyGradientDescentW12GradientDescent/learning_rate3gradients/MatMul_11_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@W12* 
_output_shapes
:

ö
/GradientDescent/update_W13/ApplyGradientDescentApplyGradientDescentW13GradientDescent/learning_rate3gradients/MatMul_12_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@W13* 
_output_shapes
:

ö
/GradientDescent/update_W14/ApplyGradientDescentApplyGradientDescentW14GradientDescent/learning_rate3gradients/MatMul_13_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@W14* 
_output_shapes
:

ö
/GradientDescent/update_W15/ApplyGradientDescentApplyGradientDescentW15GradientDescent/learning_rate3gradients/MatMul_14_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@W15* 
_output_shapes
:

ö
/GradientDescent/update_W16/ApplyGradientDescentApplyGradientDescentW16GradientDescent/learning_rate3gradients/MatMul_15_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@W16* 
_output_shapes
:

ö
/GradientDescent/update_W17/ApplyGradientDescentApplyGradientDescentW17GradientDescent/learning_rate3gradients/MatMul_16_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@W17* 
_output_shapes
:

ö
/GradientDescent/update_W18/ApplyGradientDescentApplyGradientDescentW18GradientDescent/learning_rate3gradients/MatMul_17_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@W18* 
_output_shapes
:

ő
/GradientDescent/update_out/ApplyGradientDescentApplyGradientDescentoutGradientDescent/learning_rate3gradients/MatMul_18_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@out*
_output_shapes
:	
Ä
GradientDescentNoOp/^GradientDescent/update_W1/ApplyGradientDescent0^GradientDescent/update_W10/ApplyGradientDescent0^GradientDescent/update_W11/ApplyGradientDescent0^GradientDescent/update_W12/ApplyGradientDescent0^GradientDescent/update_W13/ApplyGradientDescent0^GradientDescent/update_W14/ApplyGradientDescent0^GradientDescent/update_W15/ApplyGradientDescent0^GradientDescent/update_W16/ApplyGradientDescent0^GradientDescent/update_W17/ApplyGradientDescent0^GradientDescent/update_W18/ApplyGradientDescent/^GradientDescent/update_W2/ApplyGradientDescent/^GradientDescent/update_W3/ApplyGradientDescent/^GradientDescent/update_W4/ApplyGradientDescent/^GradientDescent/update_W5/ApplyGradientDescent/^GradientDescent/update_W6/ApplyGradientDescent/^GradientDescent/update_W7/ApplyGradientDescent/^GradientDescent/update_W8/ApplyGradientDescent/^GradientDescent/update_W9/ApplyGradientDescent0^GradientDescent/update_out/ApplyGradientDescent
ú
initNoOp
^W1/Assign^W10/Assign^W11/Assign^W12/Assign^W13/Assign^W14/Assign^W15/Assign^W16/Assign^W17/Assign^W18/Assign
^W2/Assign
^W3/Assign
^W4/Assign
^W5/Assign
^W6/Assign
^W7/Assign
^W8/Assign
^W9/Assign^out/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 
ľ
save/SaveV2/tensor_namesConst*i
value`B^BW1BW10BW11BW12BW13BW14BW15BW16BW17BW18BW2BW3BW4BW5BW6BW7BW8BW9Bout*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*9
value0B.B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ň
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesW1W10W11W12W13W14W15W16W17W18W2W3W4W5W6W7W8W9out*!
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
Ç
save/RestoreV2/tensor_namesConst"/device:CPU:0*i
value`B^BW1BW10BW11BW12BW13BW14BW15BW16BW17BW18BW2BW3BW4BW5BW6BW7BW8BW9Bout*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*9
value0B.B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ů
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*!
dtypes
2*`
_output_shapesN
L:::::::::::::::::::

save/AssignAssignW1save/RestoreV2*
use_locking(*
T0*
_class
	loc:@W1*
validate_shape(*
_output_shapes
:	

save/Assign_1AssignW10save/RestoreV2:1*
use_locking(*
T0*
_class

loc:@W10*
validate_shape(* 
_output_shapes
:


save/Assign_2AssignW11save/RestoreV2:2*
use_locking(*
T0*
_class

loc:@W11*
validate_shape(* 
_output_shapes
:


save/Assign_3AssignW12save/RestoreV2:3*
use_locking(*
T0*
_class

loc:@W12*
validate_shape(* 
_output_shapes
:


save/Assign_4AssignW13save/RestoreV2:4*
use_locking(*
T0*
_class

loc:@W13*
validate_shape(* 
_output_shapes
:


save/Assign_5AssignW14save/RestoreV2:5*
use_locking(*
T0*
_class

loc:@W14*
validate_shape(* 
_output_shapes
:


save/Assign_6AssignW15save/RestoreV2:6*
use_locking(*
T0*
_class

loc:@W15*
validate_shape(* 
_output_shapes
:


save/Assign_7AssignW16save/RestoreV2:7*
use_locking(*
T0*
_class

loc:@W16*
validate_shape(* 
_output_shapes
:


save/Assign_8AssignW17save/RestoreV2:8*
use_locking(*
T0*
_class

loc:@W17*
validate_shape(* 
_output_shapes
:


save/Assign_9AssignW18save/RestoreV2:9*
use_locking(*
T0*
_class

loc:@W18*
validate_shape(* 
_output_shapes
:


save/Assign_10AssignW2save/RestoreV2:10*
use_locking(*
T0*
_class
	loc:@W2*
validate_shape(* 
_output_shapes
:


save/Assign_11AssignW3save/RestoreV2:11*
use_locking(*
T0*
_class
	loc:@W3*
validate_shape(* 
_output_shapes
:


save/Assign_12AssignW4save/RestoreV2:12*
use_locking(*
T0*
_class
	loc:@W4*
validate_shape(* 
_output_shapes
:


save/Assign_13AssignW5save/RestoreV2:13*
use_locking(*
T0*
_class
	loc:@W5*
validate_shape(* 
_output_shapes
:


save/Assign_14AssignW6save/RestoreV2:14*
use_locking(*
T0*
_class
	loc:@W6*
validate_shape(* 
_output_shapes
:


save/Assign_15AssignW7save/RestoreV2:15*
use_locking(*
T0*
_class
	loc:@W7*
validate_shape(* 
_output_shapes
:


save/Assign_16AssignW8save/RestoreV2:16*
use_locking(*
T0*
_class
	loc:@W8*
validate_shape(* 
_output_shapes
:


save/Assign_17AssignW9save/RestoreV2:17*
use_locking(*
T0*
_class
	loc:@W9*
validate_shape(* 
_output_shapes
:


save/Assign_18Assignoutsave/RestoreV2:18*
use_locking(*
T0*
_class

loc:@out*
validate_shape(*
_output_shapes
:	
Ď
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
[
save_1/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
shape: *
dtype0*
_output_shapes
: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
shape: *
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_b02a5719350e4d61a3471061ba5e0a7b/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
Ć
save_1/SaveV2/tensor_namesConst"/device:CPU:0*i
value`B^BW1BW10BW11BW12BW13BW14BW15BW16BW17BW18BW2BW3BW4BW5BW6BW7BW8BW9Bout*
dtype0*
_output_shapes
:

save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*9
value0B.B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ó
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesW1W10W11W12W13W14W15W16W17W18W2W3W4W5W6W7W8W9out"/device:CPU:0*!
dtypes
2
¨
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
˛
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
É
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*i
value`B^BW1BW10BW11BW12BW13BW14BW15BW16BW17BW18BW2BW3BW4BW5BW6BW7BW8BW9Bout*
dtype0*
_output_shapes
:

!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*9
value0B.B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*!
dtypes
2*`
_output_shapesN
L:::::::::::::::::::

save_1/AssignAssignW1save_1/RestoreV2*
use_locking(*
T0*
_class
	loc:@W1*
validate_shape(*
_output_shapes
:	

save_1/Assign_1AssignW10save_1/RestoreV2:1*
use_locking(*
T0*
_class

loc:@W10*
validate_shape(* 
_output_shapes
:


save_1/Assign_2AssignW11save_1/RestoreV2:2*
use_locking(*
T0*
_class

loc:@W11*
validate_shape(* 
_output_shapes
:


save_1/Assign_3AssignW12save_1/RestoreV2:3*
use_locking(*
T0*
_class

loc:@W12*
validate_shape(* 
_output_shapes
:


save_1/Assign_4AssignW13save_1/RestoreV2:4*
use_locking(*
T0*
_class

loc:@W13*
validate_shape(* 
_output_shapes
:


save_1/Assign_5AssignW14save_1/RestoreV2:5*
use_locking(*
T0*
_class

loc:@W14*
validate_shape(* 
_output_shapes
:


save_1/Assign_6AssignW15save_1/RestoreV2:6*
use_locking(*
T0*
_class

loc:@W15*
validate_shape(* 
_output_shapes
:


save_1/Assign_7AssignW16save_1/RestoreV2:7*
use_locking(*
T0*
_class

loc:@W16*
validate_shape(* 
_output_shapes
:


save_1/Assign_8AssignW17save_1/RestoreV2:8*
use_locking(*
T0*
_class

loc:@W17*
validate_shape(* 
_output_shapes
:


save_1/Assign_9AssignW18save_1/RestoreV2:9*
use_locking(*
T0*
_class

loc:@W18*
validate_shape(* 
_output_shapes
:


save_1/Assign_10AssignW2save_1/RestoreV2:10*
use_locking(*
T0*
_class
	loc:@W2*
validate_shape(* 
_output_shapes
:


save_1/Assign_11AssignW3save_1/RestoreV2:11*
use_locking(*
T0*
_class
	loc:@W3*
validate_shape(* 
_output_shapes
:


save_1/Assign_12AssignW4save_1/RestoreV2:12*
use_locking(*
T0*
_class
	loc:@W4*
validate_shape(* 
_output_shapes
:


save_1/Assign_13AssignW5save_1/RestoreV2:13*
use_locking(*
T0*
_class
	loc:@W5*
validate_shape(* 
_output_shapes
:


save_1/Assign_14AssignW6save_1/RestoreV2:14*
use_locking(*
T0*
_class
	loc:@W6*
validate_shape(* 
_output_shapes
:


save_1/Assign_15AssignW7save_1/RestoreV2:15*
use_locking(*
T0*
_class
	loc:@W7*
validate_shape(* 
_output_shapes
:


save_1/Assign_16AssignW8save_1/RestoreV2:16*
use_locking(*
T0*
_class
	loc:@W8*
validate_shape(* 
_output_shapes
:


save_1/Assign_17AssignW9save_1/RestoreV2:17*
use_locking(*
T0*
_class
	loc:@W9*
validate_shape(* 
_output_shapes
:


save_1/Assign_18Assignoutsave_1/RestoreV2:18*
use_locking(*
T0*
_class

loc:@out*
validate_shape(*
_output_shapes
:	
ů
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard
[
save_2/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_2/filenamePlaceholderWithDefaultsave_2/filename/input*
shape: *
dtype0*
_output_shapes
: 
i
save_2/ConstPlaceholderWithDefaultsave_2/filename*
shape: *
dtype0*
_output_shapes
: 

save_2/StringJoin/inputs_1Const*<
value3B1 B+_temp_4b3b0bb47b7f46a5b53c577487103847/part*
dtype0*
_output_shapes
: 
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_2/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_2/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards"/device:CPU:0*
_output_shapes
: 
Ć
save_2/SaveV2/tensor_namesConst"/device:CPU:0*i
value`B^BW1BW10BW11BW12BW13BW14BW15BW16BW17BW18BW2BW3BW4BW5BW6BW7BW8BW9Bout*
dtype0*
_output_shapes
:

save_2/SaveV2/shape_and_slicesConst"/device:CPU:0*9
value0B.B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ó
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesW1W10W11W12W13W14W15W16W17W18W2W3W4W5W6W7W8W9out"/device:CPU:0*!
dtypes
2
¨
save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_2/ShardedFilename*
_output_shapes
: 
˛
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const"/device:CPU:0*
delete_old_dirs(

save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
É
save_2/RestoreV2/tensor_namesConst"/device:CPU:0*i
value`B^BW1BW10BW11BW12BW13BW14BW15BW16BW17BW18BW2BW3BW4BW5BW6BW7BW8BW9Bout*
dtype0*
_output_shapes
:

!save_2/RestoreV2/shape_and_slicesConst"/device:CPU:0*9
value0B.B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices"/device:CPU:0*!
dtypes
2*`
_output_shapesN
L:::::::::::::::::::

save_2/AssignAssignW1save_2/RestoreV2*
use_locking(*
T0*
_class
	loc:@W1*
validate_shape(*
_output_shapes
:	

save_2/Assign_1AssignW10save_2/RestoreV2:1*
use_locking(*
T0*
_class

loc:@W10*
validate_shape(* 
_output_shapes
:


save_2/Assign_2AssignW11save_2/RestoreV2:2*
use_locking(*
T0*
_class

loc:@W11*
validate_shape(* 
_output_shapes
:


save_2/Assign_3AssignW12save_2/RestoreV2:3*
use_locking(*
T0*
_class

loc:@W12*
validate_shape(* 
_output_shapes
:


save_2/Assign_4AssignW13save_2/RestoreV2:4*
use_locking(*
T0*
_class

loc:@W13*
validate_shape(* 
_output_shapes
:


save_2/Assign_5AssignW14save_2/RestoreV2:5*
use_locking(*
T0*
_class

loc:@W14*
validate_shape(* 
_output_shapes
:


save_2/Assign_6AssignW15save_2/RestoreV2:6*
use_locking(*
T0*
_class

loc:@W15*
validate_shape(* 
_output_shapes
:


save_2/Assign_7AssignW16save_2/RestoreV2:7*
use_locking(*
T0*
_class

loc:@W16*
validate_shape(* 
_output_shapes
:


save_2/Assign_8AssignW17save_2/RestoreV2:8*
use_locking(*
T0*
_class

loc:@W17*
validate_shape(* 
_output_shapes
:


save_2/Assign_9AssignW18save_2/RestoreV2:9*
use_locking(*
T0*
_class

loc:@W18*
validate_shape(* 
_output_shapes
:


save_2/Assign_10AssignW2save_2/RestoreV2:10*
use_locking(*
T0*
_class
	loc:@W2*
validate_shape(* 
_output_shapes
:


save_2/Assign_11AssignW3save_2/RestoreV2:11*
use_locking(*
T0*
_class
	loc:@W3*
validate_shape(* 
_output_shapes
:


save_2/Assign_12AssignW4save_2/RestoreV2:12*
use_locking(*
T0*
_class
	loc:@W4*
validate_shape(* 
_output_shapes
:


save_2/Assign_13AssignW5save_2/RestoreV2:13*
use_locking(*
T0*
_class
	loc:@W5*
validate_shape(* 
_output_shapes
:


save_2/Assign_14AssignW6save_2/RestoreV2:14*
use_locking(*
T0*
_class
	loc:@W6*
validate_shape(* 
_output_shapes
:


save_2/Assign_15AssignW7save_2/RestoreV2:15*
use_locking(*
T0*
_class
	loc:@W7*
validate_shape(* 
_output_shapes
:


save_2/Assign_16AssignW8save_2/RestoreV2:16*
use_locking(*
T0*
_class
	loc:@W8*
validate_shape(* 
_output_shapes
:


save_2/Assign_17AssignW9save_2/RestoreV2:17*
use_locking(*
T0*
_class
	loc:@W9*
validate_shape(* 
_output_shapes
:


save_2/Assign_18Assignoutsave_2/RestoreV2:18*
use_locking(*
T0*
_class

loc:@out*
validate_shape(*
_output_shapes
:	
ů
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_14^save_2/Assign_15^save_2/Assign_16^save_2/Assign_17^save_2/Assign_18^save_2/Assign_2^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9
1
save_2/restore_allNoOp^save_2/restore_shard
[
save_3/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_3/filenamePlaceholderWithDefaultsave_3/filename/input*
shape: *
dtype0*
_output_shapes
: 
i
save_3/ConstPlaceholderWithDefaultsave_3/filename*
shape: *
dtype0*
_output_shapes
: 

save_3/StringJoin/inputs_1Const*<
value3B1 B+_temp_ad9d8c5409274adf8b04e40d411b593d/part*
dtype0*
_output_shapes
: 
{
save_3/StringJoin
StringJoinsave_3/Constsave_3/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_3/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_3/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_3/ShardedFilenameShardedFilenamesave_3/StringJoinsave_3/ShardedFilename/shardsave_3/num_shards"/device:CPU:0*
_output_shapes
: 
Ć
save_3/SaveV2/tensor_namesConst"/device:CPU:0*i
value`B^BW1BW10BW11BW12BW13BW14BW15BW16BW17BW18BW2BW3BW4BW5BW6BW7BW8BW9Bout*
dtype0*
_output_shapes
:

save_3/SaveV2/shape_and_slicesConst"/device:CPU:0*9
value0B.B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ó
save_3/SaveV2SaveV2save_3/ShardedFilenamesave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesW1W10W11W12W13W14W15W16W17W18W2W3W4W5W6W7W8W9out"/device:CPU:0*!
dtypes
2
¨
save_3/control_dependencyIdentitysave_3/ShardedFilename^save_3/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_3/ShardedFilename*
_output_shapes
: 
˛
-save_3/MergeV2Checkpoints/checkpoint_prefixesPacksave_3/ShardedFilename^save_3/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_3/MergeV2CheckpointsMergeV2Checkpoints-save_3/MergeV2Checkpoints/checkpoint_prefixessave_3/Const"/device:CPU:0*
delete_old_dirs(

save_3/IdentityIdentitysave_3/Const^save_3/MergeV2Checkpoints^save_3/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
É
save_3/RestoreV2/tensor_namesConst"/device:CPU:0*i
value`B^BW1BW10BW11BW12BW13BW14BW15BW16BW17BW18BW2BW3BW4BW5BW6BW7BW8BW9Bout*
dtype0*
_output_shapes
:

!save_3/RestoreV2/shape_and_slicesConst"/device:CPU:0*9
value0B.B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices"/device:CPU:0*!
dtypes
2*`
_output_shapesN
L:::::::::::::::::::

save_3/AssignAssignW1save_3/RestoreV2*
use_locking(*
T0*
_class
	loc:@W1*
validate_shape(*
_output_shapes
:	

save_3/Assign_1AssignW10save_3/RestoreV2:1*
use_locking(*
T0*
_class

loc:@W10*
validate_shape(* 
_output_shapes
:


save_3/Assign_2AssignW11save_3/RestoreV2:2*
use_locking(*
T0*
_class

loc:@W11*
validate_shape(* 
_output_shapes
:


save_3/Assign_3AssignW12save_3/RestoreV2:3*
use_locking(*
T0*
_class

loc:@W12*
validate_shape(* 
_output_shapes
:


save_3/Assign_4AssignW13save_3/RestoreV2:4*
use_locking(*
T0*
_class

loc:@W13*
validate_shape(* 
_output_shapes
:


save_3/Assign_5AssignW14save_3/RestoreV2:5*
use_locking(*
T0*
_class

loc:@W14*
validate_shape(* 
_output_shapes
:


save_3/Assign_6AssignW15save_3/RestoreV2:6*
use_locking(*
T0*
_class

loc:@W15*
validate_shape(* 
_output_shapes
:


save_3/Assign_7AssignW16save_3/RestoreV2:7*
use_locking(*
T0*
_class

loc:@W16*
validate_shape(* 
_output_shapes
:


save_3/Assign_8AssignW17save_3/RestoreV2:8*
use_locking(*
T0*
_class

loc:@W17*
validate_shape(* 
_output_shapes
:


save_3/Assign_9AssignW18save_3/RestoreV2:9*
use_locking(*
T0*
_class

loc:@W18*
validate_shape(* 
_output_shapes
:


save_3/Assign_10AssignW2save_3/RestoreV2:10*
use_locking(*
T0*
_class
	loc:@W2*
validate_shape(* 
_output_shapes
:


save_3/Assign_11AssignW3save_3/RestoreV2:11*
use_locking(*
T0*
_class
	loc:@W3*
validate_shape(* 
_output_shapes
:


save_3/Assign_12AssignW4save_3/RestoreV2:12*
use_locking(*
T0*
_class
	loc:@W4*
validate_shape(* 
_output_shapes
:


save_3/Assign_13AssignW5save_3/RestoreV2:13*
use_locking(*
T0*
_class
	loc:@W5*
validate_shape(* 
_output_shapes
:


save_3/Assign_14AssignW6save_3/RestoreV2:14*
use_locking(*
T0*
_class
	loc:@W6*
validate_shape(* 
_output_shapes
:


save_3/Assign_15AssignW7save_3/RestoreV2:15*
use_locking(*
T0*
_class
	loc:@W7*
validate_shape(* 
_output_shapes
:


save_3/Assign_16AssignW8save_3/RestoreV2:16*
use_locking(*
T0*
_class
	loc:@W8*
validate_shape(* 
_output_shapes
:


save_3/Assign_17AssignW9save_3/RestoreV2:17*
use_locking(*
T0*
_class
	loc:@W9*
validate_shape(* 
_output_shapes
:


save_3/Assign_18Assignoutsave_3/RestoreV2:18*
use_locking(*
T0*
_class

loc:@out*
validate_shape(*
_output_shapes
:	
ů
save_3/restore_shardNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_2^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9
1
save_3/restore_allNoOp^save_3/restore_shard"B
save_3/Const:0save_3/Identity:0save_3/restore_all (5 @F8"ź

trainable_variables¤
Ą

A
W1:0	W1/Assign	W1/read:02!W1/Initializer/truncated_normal:08
A
W2:0	W2/Assign	W2/read:02!W2/Initializer/truncated_normal:08
A
W3:0	W3/Assign	W3/read:02!W3/Initializer/truncated_normal:08
A
W4:0	W4/Assign	W4/read:02!W4/Initializer/truncated_normal:08
A
W5:0	W5/Assign	W5/read:02!W5/Initializer/truncated_normal:08
A
W6:0	W6/Assign	W6/read:02!W6/Initializer/truncated_normal:08
A
W7:0	W7/Assign	W7/read:02!W7/Initializer/truncated_normal:08
A
W8:0	W8/Assign	W8/read:02!W8/Initializer/truncated_normal:08
A
W9:0	W9/Assign	W9/read:02!W9/Initializer/truncated_normal:08
E
W10:0
W10/Assign
W10/read:02"W10/Initializer/truncated_normal:08
E
W11:0
W11/Assign
W11/read:02"W11/Initializer/truncated_normal:08
E
W12:0
W12/Assign
W12/read:02"W12/Initializer/truncated_normal:08
E
W13:0
W13/Assign
W13/read:02"W13/Initializer/truncated_normal:08
E
W14:0
W14/Assign
W14/read:02"W14/Initializer/truncated_normal:08
E
W15:0
W15/Assign
W15/read:02"W15/Initializer/truncated_normal:08
E
W16:0
W16/Assign
W16/read:02"W16/Initializer/truncated_normal:08
E
W17:0
W17/Assign
W17/read:02"W17/Initializer/truncated_normal:08
E
W18:0
W18/Assign
W18/read:02"W18/Initializer/truncated_normal:08
E
out:0
out/Assign
out/read:02"out/Initializer/truncated_normal:08"
train_op

GradientDescent"˛

	variables¤
Ą

A
W1:0	W1/Assign	W1/read:02!W1/Initializer/truncated_normal:08
A
W2:0	W2/Assign	W2/read:02!W2/Initializer/truncated_normal:08
A
W3:0	W3/Assign	W3/read:02!W3/Initializer/truncated_normal:08
A
W4:0	W4/Assign	W4/read:02!W4/Initializer/truncated_normal:08
A
W5:0	W5/Assign	W5/read:02!W5/Initializer/truncated_normal:08
A
W6:0	W6/Assign	W6/read:02!W6/Initializer/truncated_normal:08
A
W7:0	W7/Assign	W7/read:02!W7/Initializer/truncated_normal:08
A
W8:0	W8/Assign	W8/read:02!W8/Initializer/truncated_normal:08
A
W9:0	W9/Assign	W9/read:02!W9/Initializer/truncated_normal:08
E
W10:0
W10/Assign
W10/read:02"W10/Initializer/truncated_normal:08
E
W11:0
W11/Assign
W11/read:02"W11/Initializer/truncated_normal:08
E
W12:0
W12/Assign
W12/read:02"W12/Initializer/truncated_normal:08
E
W13:0
W13/Assign
W13/read:02"W13/Initializer/truncated_normal:08
E
W14:0
W14/Assign
W14/read:02"W14/Initializer/truncated_normal:08
E
W15:0
W15/Assign
W15/read:02"W15/Initializer/truncated_normal:08
E
W16:0
W16/Assign
W16/read:02"W16/Initializer/truncated_normal:08
E
W17:0
W17/Assign
W17/read:02"W17/Initializer/truncated_normal:08
E
W18:0
W18/Assign
W18/read:02"W18/Initializer/truncated_normal:08
E
out:0
out/Assign
out/read:02"out/Initializer/truncated_normal:08