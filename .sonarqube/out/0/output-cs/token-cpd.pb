Ÿ
VC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\WeatherForecast.cs
	namespace 	
	ilkDeneme
 
{ 
public 

class 
WeatherForecast  
{ 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
int		 
TemperatureC		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public 
int 
TemperatureF 
=>  "
$num# %
+& '
(( )
int) ,
), -
(- .
TemperatureC. :
/; <
$num= C
)C D
;D E
public 
string 
Summary 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ôU
NC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Startup.cs
	namespace 	
	ilkDeneme
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
var   
key   
=   
Encoding   
.   
ASCII   $
.  $ %
GetBytes  % -
(  - .
Configuration  . ;
.  ; <

GetSection  < F
(  F G
$str  G Z
)  Z [
.  [ \
Value  \ a
)  a b
;  b c
services## 
.## #
AddControllersWithViews## ,
(##, -
)##- .
;##. /
services$$ 
.$$ 
	AddScoped$$ 
<$$ 
ITasinmazInterface$$ 1
,$$1 2
TasinmazService$$3 B
>$$B C
($$C D
)$$D E
;$$E F
services%% 
.%% 
	AddScoped%% 
<%% 

IIlService%% )
,%%) *
	IlService%%+ 4
>%%4 5
(%%5 6
)%%6 7
;%%7 8
services&& 
.&& 
	AddScoped&& 
<&& 
IIlceService&& +
,&&+ ,
IlceService&&- 8
>&&8 9
(&&9 :
)&&: ;
;&&; <
services'' 
.'' 
	AddScoped'' 
<'' 
IMahalleService'' .
,''. /
MahalleService''0 >
>''> ?
(''? @
)''@ A
;''A B
services(( 
.(( 
	AddScoped(( 
<(( 
IAuthRepository(( .
,((. /
AuthRepository((0 >
>((> ?
(((? @
)((@ A
;((A B
services)) 
.)) 
	AddScoped)) 
<)) 
IUserService)) +
,))+ ,
UserService))- 8
>))8 9
())9 :
))): ;
;)); <
services** 
.** 
	AddScoped** 
<** 
ILoggingService** .
,**. /
LoggingService**0 >
>**> ?
(**? @
)**@ A
;**A B
services++ 
.++ 
	AddScoped++ 
<++ 

LogService++ )
>++) *
(++* +
)+++ ,
;++, -
services,, 
.,, 
AddDbContext,, !
<,,! " 
ApplicationDbContext,," 6
>,,6 7
(,,7 8
options,,8 ?
=>,,@ B
options// 
.// 
	UseNpgsql// 
(// 
Configuration// +
.//+ ,
GetConnectionString//, ?
(//? @
$str//@ V
)//V W
)//W X
)//X Y
;//Y Z
services00 
.00 
AddCors00 
(00 
options00 $
=>00% '
{11 
options22 
.22 
	AddPolicy22 !
(22! "
$str22" ,
,22, -
builder33 
=>33 
{44 
builder55 
.55  
AllowAnyOrigin55  .
(55. /
)55/ 0
.66  
AllowAnyMethod66  .
(66. /
)66/ 0
.77  
AllowAnyHeader77  .
(77. /
)77/ 0
;770 1
}88 
)88 
;88 
}99 
)99 
;99 
servicesMM 
.MM 
AddAuthenticationMM &
(MM& '
xMM' (
=>MM) +
{NN 
xOO 
.OO %
DefaultAuthenticateSchemeOO +
=OO, -
JwtBearerDefaultsOO. ?
.OO? @ 
AuthenticationSchemeOO@ T
;OOT U
xPP 
.PP "
DefaultChallengeSchemePP (
=PP) *
JwtBearerDefaultsPP+ <
.PP< = 
AuthenticationSchemePP= Q
;PPQ R
}QQ 
)QQ 
.RR 
AddJwtBearerRR 
(RR 
xRR 
=>RR 
{SS 
xTT 
.TT  
RequireHttpsMetadataTT 
=TT 
falseTT "
;TT" #
xUU 
.UU 
	SaveTokenUU 
=UU 
trueUU 
;UU 
xVV 
.VV %
TokenValidationParametersVV 
=VV  !
newVV" %%
TokenValidationParametersVV& ?
{WW 
ValidateIssuerXX 
=XX 
trueXX 
,XX 
ValidateAudienceYY 
=YY 
trueYY 
,YY  
ValidateLifetimeZZ 
=ZZ 
trueZZ 
,ZZ  $
ValidateIssuerSigningKey\\  
=\\! "
true\\# '
,\\' (
ValidIssuer]] 
=]] 
Configuration]] #
[]]# $
$str]]$ 8
]]]8 9
,]]9 :
ValidAudience^^ 
=^^ 
Configuration^^ %
[^^% &
$str^^& <
]^^< =
,^^= >
IssuerSigningKey__ 
=__ 
new__  
SymmetricSecurityKey__ 3
(__3 4
Encoding__4 <
.__< =
ASCII__= B
.__B C
GetBytes__C K
(__K L
Configuration__L Y
[__Y Z
$str__Z m
]__m n
)__n o
)__o p
}`` 
;`` 
}aa 
)aa 
;aa 
servicesdd 
.dd 
AddControllersdd #
(dd# $
)dd$ %
.ee 	
AddNewtonsoftJsonee	 
(ee 
optionsee "
=>ee# %
{ff 	
optionsgg 
.gg 
SerializerSettingsgg &
.gg& '!
ReferenceLoopHandlinggg' <
=gg= >

Newtonsoftgg? I
.ggI J
JsonggJ N
.ggN O!
ReferenceLoopHandlingggO d
.ggd e
Ignoregge k
;ggk l
}hh 	
)hh	 

;hh
 
servicesii 
.ii 
AddControllersii #
(ii# $
)ii$ %
;ii% &
servicesll 
.ll 
AddSwaggerGenll "
(ll" #
cll# $
=>ll% '
{mm 
cnn 
.nn 

SwaggerDocnn 
(nn 
$strnn !
,nn! "
newnn# &
OpenApiInfonn' 2
{nn3 4
Titlenn5 :
=nn; <
$strnn= E
,nnE F
VersionnnG N
=nnO P
$strnnQ U
}nnV W
)nnW X
;nnX Y
cpp 
.pp !
AddSecurityDefinitionpp '
(pp' (
$strpp( 0
,pp0 1
newpp2 5!
OpenApiSecuritySchemepp6 K
{qq 
Namerr 
=rr 
$strrr *
,rr* +
Typess 
=ss 
SecuritySchemeTypess -
.ss- .
ApiKeyss. 4
,ss4 5
Schemett 
=tt 
$strtt %
,tt% &
BearerFormatuu  
=uu! "
$struu# (
,uu( )
Invv 
=vv 
ParameterLocationvv *
.vv* +
Headervv+ 1
,vv1 2
Descriptionww 
=ww  !
$strww" Y
}xx 
)xx 
;xx 
czz 
.zz "
AddSecurityRequirementzz (
(zz( )
newzz) ,&
OpenApiSecurityRequirementzz- G
{{{ 	
{|| 
new}} !
OpenApiSecurityScheme}} )
{~~ 
	Reference 
= 
new  #
OpenApiReference$ 4
{
ÄÄ 
Type
ÅÅ 
=
ÅÅ 
ReferenceType
ÅÅ ,
.
ÅÅ, -
SecurityScheme
ÅÅ- ;
,
ÅÅ; <
Id
ÇÇ 
=
ÇÇ 
$str
ÇÇ %
}
ÉÉ 
}
ÑÑ 
,
ÑÑ 
Array
ÖÖ 
.
ÖÖ 
Empty
ÖÖ 
<
ÖÖ 
string
ÖÖ "
>
ÖÖ" #
(
ÖÖ# $
)
ÖÖ$ %
}
ÜÜ 
}
áá 	
)
áá	 

;
áá
 
}
àà 
)
àà 
;
àà 
}
ââ 	
public
åå 
void
åå 
	Configure
åå 
(
åå !
IApplicationBuilder
åå 1
app
åå2 5
,
åå5 6!
IWebHostEnvironment
åå7 J
env
ååK N
)
ååN O
{
çç 	
if
éé 
(
éé 
env
éé 
.
éé 
IsDevelopment
éé !
(
éé! "
)
éé" #
)
éé# $
{
èè 
app
êê 
.
êê '
UseDeveloperExceptionPage
êê -
(
êê- .
)
êê. /
;
êê/ 0
}
ëë 
else
íí 
{
ìì 
app
îî 
.
îî !
UseExceptionHandler
îî '
(
îî' (
$str
îî( 5
)
îî5 6
;
îî6 7
app
ïï 
.
ïï 
UseHsts
ïï 
(
ïï 
)
ïï 
;
ïï 
}
ññ 
app
òò 
.
òò !
UseHttpsRedirection
òò #
(
òò# $
)
òò$ %
;
òò% &
app
ôô 
.
ôô 
UseStaticFiles
ôô 
(
ôô 
)
ôô  
;
ôô  !
app
öö 
.
öö 

UseRouting
öö 
(
öö 
)
öö 
;
öö 
app
õõ 
.
õõ 
UseCors
õõ 
(
õõ 
$str
õõ "
)
õõ" #
;
õõ# $
app
úú 
.
úú 
UseAuthentication
úú !
(
úú! "
)
úú" #
;
úú# $
app
ùù 
.
ùù 
UseAuthorization
ùù  
(
ùù  !
)
ùù! "
;
ùù" #
app
†† 
.
†† 

UseSwagger
†† 
(
†† 
)
†† 
;
†† 
app
°° 
.
°° 
UseSwaggerUI
°° 
(
°° 
c
°° 
=>
°° !
{
¢¢ 
c
££ 
.
££ 
SwaggerEndpoint
££ !
(
££! "
$str
££" <
,
££< =
$str
££> I
)
££I J
;
££J K
}
¶¶ 
)
¶¶ 
;
¶¶ 
app
©© 
.
©© 
UseEndpoints
©© 
(
©© 
	endpoints
©© '
=>
©©( *
{
™™ 
	endpoints
´´ 
.
´´ 
MapControllers
´´ (
(
´´( )
)
´´) *
;
´´* +
}
¨¨ 
)
¨¨ 
;
¨¨ 
}
≠≠ 	
}
∞∞ 
}±± ©M
[C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Services\UserService.cs
public		 
class		 
UserService		 
:		 
IUserService		 '
{

 
private 
readonly  
ApplicationDbContext )
_context* 2
;2 3
public 

UserService 
(  
ApplicationDbContext +
context, 3
)3 4
{ 
_context 
= 
context 
; 
} 
public 

async 
Task 
< 
IEnumerable !
<! "
User" &
>& '
>' (
GetAllUsersAsync) 9
(9 :
): ;
{ 
return 
await 
_context 
. 
Users #
.# $
ToListAsync$ /
(/ 0
)0 1
;1 2
} 
public 

async 
Task 
DeleteUserAsync %
(% &
int& )
id* ,
), -
{ 
var 
user 
= 
await 
_context !
.! "
Users" '
.' (
	FindAsync( 1
(1 2
id2 4
)4 5
;5 6
if 

( 
user 
!= 
null 
) 
{ 	
_context 
. 
Users 
. 
Remove !
(! "
user" &
)& '
;' (
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
} 	
} 
public!! 

async!! 
Task!! 
AddUserAsync!! "
(!!" #
UserDTO!!# *
userDto!!+ 2
)!!2 3
{"" 
if## 

(## 
userDto## 
==## 
null## 
)## 
throw## "
new### &!
ArgumentNullException##' <
(##< =
nameof##= C
(##C D
userDto##D K
)##K L
)##L M
;##M N
var%% 
existingUser%% 
=%% 
await%%  
_context%%! )
.%%) *
Users%%* /
.%%/ 0 
SingleOrDefaultAsync%%0 D
(%%D E
u%%E F
=>%%G I
u%%J K
.%%K L
Email%%L Q
==%%R T
userDto%%U \
.%%\ ]
Email%%] b
)%%b c
;%%c d
if&& 

(&& 
existingUser&& 
!=&& 
null&&  
)&&  !
{'' 	
throw(( 
new(( %
InvalidOperationException(( /
(((/ 0
$str((0 P
)((P Q
;((Q R
})) 	
var-- 
user-- 
=-- 
new-- 
User-- 
{.. 	
Email// 
=// 
userDto// 
.// 
Email// !
,//! "
Role00 
=00 
userDto00 
.00 
Role00 
}11 	
;11	 

byte44 
[44 
]44 
passwordHash44 
,44 
passwordSalt44 )
;44) *
CreatePasswordHash55 
(55 
userDto55 "
.55" #
Password55# +
,55+ ,
out55- 0
passwordHash551 =
,55= >
out55? B
passwordSalt55C O
)55O P
;55P Q
user77 
.77 
PasswordHash77 
=77 
passwordHash77 (
;77( )
user88 
.88 
PasswordSalt88 
=88 
passwordSalt88 (
;88( )
_context:: 
.:: 
Users:: 
.:: 
Add:: 
(:: 
user:: 
)::  
;::  !
await;; 
_context;; 
.;; 
SaveChangesAsync;; '
(;;' (
);;( )
;;;) *
}<< 
private?? 
void?? 
CreatePasswordHash?? #
(??# $
string??$ *
password??+ 3
,??3 4
out??5 8
byte??9 =
[??= >
]??> ?
passwordHash??@ L
,??L M
out??N Q
byte??R V
[??V W
]??W X
passwordSalt??Y e
)??e f
{@@ 
usingAA 
(AA 
varAA 
hmacAA 
=AA 
newAA 
SystemAA $
.AA$ %
SecurityAA% -
.AA- .
CryptographyAA. :
.AA: ;

HMACSHA256AA; E
(AAE F
)AAF G
)AAG H
{BB 	
passwordSaltCC 
=CC 
hmacCC 
.CC  
KeyCC  #
;CC# $
passwordHashDD 
=DD 
hmacDD 
.DD  
ComputeHashDD  +
(DD+ ,
SystemDD, 2
.DD2 3
TextDD3 7
.DD7 8
EncodingDD8 @
.DD@ A
UTF8DDA E
.DDE F
GetBytesDDF N
(DDN O
passwordDDO W
)DDW X
)DDX Y
;DDY Z
}EE 	
}FF 
publicHH 

asyncHH 
TaskHH 
UpdateUserAsyncHH %
(HH% &
UserDTOHH& -
userDtoHH. 5
)HH5 6
{II 
ifJJ 

(JJ 
userDtoJJ 
==JJ 
nullJJ 
)JJ 
throwJJ "
newJJ# &!
ArgumentNullExceptionJJ' <
(JJ< =
nameofJJ= C
(JJC D
userDtoJJD K
)JJK L
)JJL M
;JJM N
varLL 
userLL 
=LL 
awaitLL 
_contextLL !
.LL! "
UsersLL" '
.LL' (
	FindAsyncLL( 1
(LL1 2
userDtoLL2 9
.LL9 :
KullaniciIdLL: E
)LLE F
;LLF G
ifMM 

(MM 
userMM 
==MM 
nullMM 
)MM 
{NN 	
throwOO 
newOO 
ArgumentExceptionOO '
(OO' (
$strOO( >
)OO> ?
;OO? @
}PP 	
varQQ %
existingUserWithSameEmailQQ %
=QQ& '
awaitQQ( -
_contextQQ. 6
.QQ6 7
UsersQQ7 <
.RR 	
WhereRR	 
(RR 
uRR 
=>RR 
uRR 
.RR 
EmailRR 
==RR 
userDtoRR &
.RR& '
EmailRR' ,
&&RR- /
uRR0 1
.RR1 2
KullaniciIdRR2 =
!=RR> @
userDtoRRA H
.RRH I
KullaniciIdRRI T
)RRT U
.SS 	
FirstOrDefaultAsyncSS	 
(SS 
)SS 
;SS 
ifUU 

(UU %
existingUserWithSameEmailUU %
!=UU& (
nullUU) -
)UU- .
{VV 	
throwWW 
newWW %
InvalidOperationExceptionWW /
(WW/ 0
$strWW0 n
)WWn o
;WWo p
}XX 	
user[[ 
.[[ 
Email[[ 
=[[ 
userDto[[ 
.[[ 
Email[[ "
;[[" #
user\\ 
.\\ 
Role\\ 
=\\ 
userDto\\ 
.\\ 
Role\\  
;\\  !
if^^ 

(^^ 
!^^ 
string^^ 
.^^ 
IsNullOrEmpty^^ !
(^^! "
userDto^^" )
.^^) *
Password^^* 2
)^^2 3
)^^3 4
{__ 	
byte`` 
[`` 
]`` 
passwordHash`` 
,``  
passwordSalt``! -
;``- .
CreatePasswordHashaa 
(aa 
userDtoaa &
.aa& '
Passwordaa' /
,aa/ 0
outaa1 4
passwordHashaa5 A
,aaA B
outaaC F
passwordSaltaaG S
)aaS T
;aaT U
usercc 
.cc 
PasswordHashcc 
=cc 
passwordHashcc  ,
;cc, -
userdd 
.dd 
PasswordSaltdd 
=dd 
passwordSaltdd  ,
;dd, -
}ee 	
_contextgg 
.gg 
Usersgg 
.gg 
Updategg 
(gg 
usergg "
)gg" #
;gg# $
awaithh 
_contexthh 
.hh 
SaveChangesAsynchh '
(hh' (
)hh( )
;hh) *
}ii 
publicmm 

asyncmm 
Taskmm 
<mm 
Usermm 
>mm 
GetUserByIdAsyncmm ,
(mm, -
intmm- 0
idmm1 3
)mm3 4
{nn 
returnoo 
awaitoo 
_contextoo 
.oo 
Usersoo #
.oo# $
	FindAsyncoo$ -
(oo- .
idoo. 0
)oo0 1
;oo1 2
}pp 
publicrr 

asyncrr 
Taskrr 
<rr 
stringrr 
>rr *
GetUserEmailByKullaniciIdAsyncrr <
(rr< =
intrr= @
kullaniciIdrrA L
)rrL M
{ss 
vartt 
usertt 
=tt 
awaittt 
_contexttt !
.tt! "
Userstt" '
.uu 
Whereuu 
(uu 
uuu 
=>uu 
uuu 
.uu 
KullaniciIduu %
==uu& (
kullaniciIduu) 4
)uu4 5
.vv 
Selectvv 
(vv 
uvv 
=>vv 
uvv 
.vv 
Emailvv  
)vv  !
.ww 
FirstOrDefaultAsyncww  
(ww  !
)ww! "
;ww" #
returnyy 
useryy 
;yy 
}zz 
}|| ¨∞
_C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Services\TasinmazService.cs
	namespace 	
	ilkDeneme
 
. 
Services 
{		 
public

 

class

 
TasinmazService

  
:

  !
ITasinmazInterface

! 3
{ 
private 
readonly  
ApplicationDbContext -
_context. 6
;6 7
private 
readonly 
ILoggingService (
_loggingService) 8
;8 9
public 
TasinmazService 
(  
ApplicationDbContext 3
context4 ;
,; <
ILoggingService= L
loggingServiceM [
)[ \
{ 	
_context 
= 
context 
; 
_loggingService 
= 
loggingService ,
;, -
} 	
public 
async 
Task 
< 
List 
< 
Tasinmaz '
>' (
>( )"
GetAllTasinmazlarAsync* @
(@ A
)A B
{ 	
return 
await 
_context !
.! "
Tasinmazlar" -
. 
Include 
( 
t 
=> 
t 
. 
Mahalle 
) 
.  
ThenInclude  +
(+ ,
t, -
=>- /
t0 1
.1 2
Ilce2 6
)6 7
.7 8
ThenInclude8 C
(C D
tD E
=>E G
tG H
.H I
IlI K
)K L
. 
ToListAsync 
( 
) 
; 
} 	
public 
async 
Task 
< 
Tasinmaz "
>" # 
GetTasinmazByIdAsync$ 8
(8 9
int9 <
id= ?
)? @
{ 	
return 
await 
_context !
.! "
Tasinmazlar" -
.   
Include   
(   
t   
=>   
t   
.   
Mahalle   #
)  # $
.!! 
ThenInclude!! 
(!! 
m!! 
=>!! !
m!!" #
.!!# $
Ilce!!$ (
)!!( )
."" 
ThenInclude""  
(""  !
i""! "
=>""# %
i""& '
.""' (
Il""( *
)""* +
.## 
FirstOrDefaultAsync##  
(##  !
t##! "
=>### %
t##& '
.##' (

TasinmazId##( 2
==##3 5
id##6 8
)##8 9
;##9 :
}$$ 	
public'' 
async'' 
Task'' 
<'' 
Tasinmaz'' "
>''" #
AddTasinmazAsync''$ 4
(''4 5
Tasinmaz''5 =
tasinmaz''> F
,''F G
int''H K
kullaniciId''L W
,''W X
string''Y _
	ipAddress''` i
)''i j
{(( 
if)) 
()) 
tasinmaz)) 
==)) 
null)) 
))) 
{** 
var++ 
errorMessage++ 
=++ 
$str++ 3
;++3 4
await,, 
_loggingService,, 
.,, 
	LogAction,, '
(,,' (
kullaniciId,,( 3
,,,3 4
$num,,5 6
,,,6 7
$num,,8 9
,,,9 :
errorMessage,,; G
,,,G H
	ipAddress,,I R
),,R S
;,,S T
throw-- 
new-- !
ArgumentNullException-- '
(--' (
nameof--( .
(--. /
tasinmaz--/ 7
)--7 8
,--8 9
errorMessage--: F
)--F G
;--G H
}.. 
if11 
(11 
string11 
.11 
IsNullOrEmpty11 $
(11$ %
tasinmaz11% -
.11- .
Ada11. 1
)111 2
||113 5
string116 <
.11< =
IsNullOrEmpty11= J
(11J K
tasinmaz11K S
.11S T
Parsel11T Z
)11Z [
||11\ ^
string22 
.22 
IsNullOrEmpty22 $
(22$ %
tasinmaz22% -
.22- .
Nitelik22. 5
)225 6
||227 9
string22: @
.22@ A
IsNullOrEmpty22A N
(22N O
tasinmaz22O W
.22W X
KoordinatBilgileri22X j
)22j k
)22k l
{33 
var44 
errorMessage44  
=44! "
$str44# |
;44| }
await55 
_loggingService55 %
.55% &
	LogAction55& /
(55/ 0
kullaniciId550 ;
,55; <
$num55= >
,55> ?
$num55@ A
,55A B
errorMessage55C O
,55O P
	ipAddress55Q Z
)55Z [
;55[ \
throw66 
new66 
ArgumentException66 +
(66+ ,
errorMessage66, 8
)668 9
;669 :
}77 
try99 
{:: 
_context;; 
.;; 
Tasinmazlar;; 
.;; 
Add;;  
(;;  !
tasinmaz;;! )
);;) *
;;;* +
await<< 
_context<< 
.<< 
SaveChangesAsync<< '
(<<' (
)<<( )
;<<) *
await?? 
_loggingService?? 
.?? 
	LogAction?? '
(??' (
kullaniciId??( 3
,??3 4
$num??5 6
,??6 7
$num??8 9
,??9 :
$"??; =
$str??= T
{??T U
tasinmaz??U ]
.??] ^

TasinmazId??^ h
}??h i
"??i j
,??j k
	ipAddress??l u
)??u v
;??v w
returnAA 
tasinmazAA 
;AA 
}BB 
catchCC 	
(CC
 
DbUpdateExceptionCC 
dbExCC !
)CC! "
{DD 
varFF 
errorMessageFF 
=FF 
$"FF 
$strFF 4
{FF4 5
dbExFF5 9
.FF9 :
MessageFF: A
}FFA B
"FFB C
;FFC D
awaitGG 
_loggingServiceGG 
.GG 
	LogActionGG '
(GG' (
kullaniciIdGG( 3
,GG3 4
$numGG5 6
,GG6 7
$numGG8 9
,GG9 :
errorMessageGG; G
,GGG H
	ipAddressGGI R
)GGR S
;GGS T
throwHH 
newHH %
InvalidOperationExceptionHH +
(HH+ ,
errorMessageHH, 8
,HH8 9
dbExHH: >
)HH> ?
;HH? @
}II 
catchJJ 	
(JJ
 
	ExceptionJJ 
exJJ 
)JJ 
{KK 
varMM 
errorMessageMM 
=MM 
$"MM 
$strMM =
{MM= >
exMM> @
.MM@ A
MessageMMA H
}MMH I
"MMI J
;MMJ K
awaitNN 
_loggingServiceNN 
.NN 
	LogActionNN '
(NN' (
kullaniciIdNN( 3
,NN3 4
$numNN5 6
,NN6 7
$numNN8 9
,NN9 :
errorMessageNN; G
,NNG H
	ipAddressNNI R
)NNR S
;NNS T
throwOO 
;OO 
}PP 
}QQ 
publicWW 
asyncWW 
TaskWW 
<WW 
TasinmazWW "
>WW" #
UpdateTasinmazAsyncWW$ 7
(WW7 8
TasinmazWW8 @
tasinmazWWA I
,WWI J
intWWK N
kullaniciIdWWO Z
,WWZ [
stringWW\ b
	ipAddressWWc l
)WWl m
{XX 	
ifYY 
(YY 
tasinmazYY 
==YY 
nullYY  
)YY  !
{ZZ 
var[[ 
errorMessage[[  
=[[! "
$str[[# ;
;[[; <
await\\ 
_loggingService\\ %
.\\% &
	LogAction\\& /
(\\/ 0
kullaniciId\\0 ;
,\\; <
$num\\= >
,\\> ?
$num\\@ A
,\\A B
errorMessage\\C O
,\\O P
	ipAddress\\Q Z
)\\Z [
;\\[ \
throw]] 
new]] !
ArgumentNullException]] /
(]]/ 0
nameof]]0 6
(]]6 7
tasinmaz]]7 ?
)]]? @
,]]@ A
errorMessage]]B N
)]]N O
;]]O P
}^^ 
if`` 
(`` 
string`` 
.`` 
IsNullOrEmpty`` $
(``$ %
tasinmaz``% -
.``- .
Ada``. 1
)``1 2
||``3 5
string``6 <
.``< =
IsNullOrEmpty``= J
(``J K
tasinmaz``K S
.``S T
Parsel``T Z
)``Z [
||``\ ^
stringaa 
.aa 
IsNullOrEmptyaa $
(aa$ %
tasinmazaa% -
.aa- .
Nitelikaa. 5
)aa5 6
||aa7 9
stringaa: @
.aa@ A
IsNullOrEmptyaaA N
(aaN O
tasinmazaaO W
.aaW X
KoordinatBilgileriaaX j
)aaj k
)aak l
{bb 
varcc 
errorMessagecc  
=cc! "
$strcc# |
;cc| }
awaitdd 
_loggingServicedd %
.dd% &
	LogActiondd& /
(dd/ 0
kullaniciIddd0 ;
,dd; <
$numdd= >
,dd> ?
$numdd@ A
,ddA B
errorMessageddC O
,ddO P
	ipAddressddQ Z
)ddZ [
;dd[ \
throwee 
newee 
ArgumentExceptionee +
(ee+ ,
errorMessageee, 8
)ee8 9
;ee9 :
}ff 
tryhh 
{ii 
varjj 
existingTasinmazjj $
=jj% &
awaitjj' ,
_contextjj- 5
.jj5 6
Tasinmazlarjj6 A
.jjA B
	FindAsyncjjB K
(jjK L
tasinmazjjL T
.jjT U

TasinmazIdjjU _
)jj_ `
;jj` a
ifkk 
(kk 
existingTasinmazkk $
==kk% '
nullkk( ,
)kk, -
{ll 
throwmm 
newmm %
InvalidOperationExceptionmm 7
(mm7 8
$strmm8 M
)mmM N
;mmN O
}nn 
_contextpp 
.pp 
Entrypp 
(pp 
existingTasinmazpp /
)pp/ 0
.pp0 1
CurrentValuespp1 >
.pp> ?
	SetValuespp? H
(ppH I
tasinmazppI Q
)ppQ R
;ppR S
awaitrr 
_contextrr 
.rr 
SaveChangesAsyncrr /
(rr/ 0
)rr0 1
;rr1 2
returntt 
existingTasinmaztt '
;tt' (
}uu 
catchvv 
(vv 
DbUpdateExceptionvv $
dbExvv% )
)vv) *
{ww 
varxx 
errorMessagexx  
=xx! "
$"xx# %
$strxx% <
{xx< =
dbExxx= A
.xxA B
MessagexxB I
}xxI J
"xxJ K
;xxK L
awaityy 
_loggingServiceyy %
.yy% &
	LogActionyy& /
(yy/ 0
kullaniciIdyy0 ;
,yy; <
$numyy= >
,yy> ?
$numyy@ A
,yyA B
errorMessageyyC O
,yyO P
	ipAddressyyQ Z
)yyZ [
;yy[ \
throwzz 
newzz %
InvalidOperationExceptionzz 3
(zz3 4
errorMessagezz4 @
,zz@ A
dbExzzB F
)zzF G
;zzG H
}{{ 
catch|| 
(|| 
	Exception|| 
ex|| 
)||  
{}} 
var~~ 
errorMessage~~  
=~~! "
$"~~# %
$str~~% H
{~~H I
ex~~I K
.~~K L
Message~~L S
}~~S T
"~~T U
;~~U V
await 
_loggingService %
.% &
	LogAction& /
(/ 0
kullaniciId0 ;
,; <
$num= >
,> ?
$num@ A
,A B
errorMessageC O
,O P
	ipAddressQ Z
)Z [
;[ \
throw
ÄÄ 
;
ÄÄ 
}
ÅÅ 
}
ÇÇ 	
public
áá 
async
áá 
Task
áá !
DeleteTasinmazAsync
áá -
(
áá- .
int
áá. 1
id
áá2 4
,
áá4 5
int
áá6 9
kullaniciId
áá: E
,
ááE F
string
ááG M
	ipAddress
ááN W
)
ááW X
{
àà 	
var
ââ 
tasinmaz
ââ 
=
ââ 
await
ââ  
_context
ââ! )
.
ââ) *
Tasinmazlar
ââ* 5
.
ââ5 6
	FindAsync
ââ6 ?
(
ââ? @
id
ââ@ B
)
ââB C
;
ââC D
if
ää 
(
ää 
tasinmaz
ää 
!=
ää 
null
ää  
)
ää  !
{
ãã 
_context
åå 
.
åå 
Tasinmazlar
åå $
.
åå$ %
Remove
åå% +
(
åå+ ,
tasinmaz
åå, 4
)
åå4 5
;
åå5 6
await
çç 
_context
çç 
.
çç 
SaveChangesAsync
çç /
(
çç/ 0
)
çç0 1
;
çç1 2
await
êê 
_loggingService
êê %
.
êê% &
	LogAction
êê& /
(
êê/ 0
kullaniciId
êê0 ;
,
êê; <
$num
êê= >
,
êê> ?
$num
êê@ A
,
êêA B
$"
êêC E
$str
êêE ^
{
êê^ _
id
êê_ a
}
êêa b
"
êêb c
,
êêc d
	ipAddress
êêe n
)
êên o
;
êêo p
}
ëë 
else
íí 
{
ìì 
await
ïï 
_loggingService
ïï %
.
ïï% &
	LogAction
ïï& /
(
ïï/ 0
kullaniciId
ïï0 ;
,
ïï; <
$num
ïï= >
,
ïï> ?
$num
ïï@ A
,
ïïA B
$"
ïïC E
$str
ïïE g
{
ïïg h
id
ïïh j
}
ïïj k
$str
ïïk w
"
ïïw x
,
ïïx y
	ipAddressïïz É
)ïïÉ Ñ
;ïïÑ Ö
}
ññ 
}
óó 	
public
ôô 
async
ôô 
Task
ôô $
DeleteTasinmazlarAsync
ôô 0
(
ôô0 1
List
ôô1 5
<
ôô5 6
int
ôô6 9
>
ôô9 :
ids
ôô; >
,
ôô> ?
int
ôô@ C
kullaniciId
ôôD O
,
ôôO P
string
ôôQ W
	ipAddress
ôôX a
)
ôôa b
{
öö 	
var
õõ 
tasinmazlar
õõ 
=
õõ 
await
õõ #
_context
õõ$ ,
.
õõ, -
Tasinmazlar
õõ- 8
.
õõ8 9
Where
õõ9 >
(
õõ> ?
t
õõ? @
=>
õõA C
ids
õõD G
.
õõG H
Contains
õõH P
(
õõP Q
t
õõQ R
.
õõR S

TasinmazId
õõS ]
)
õõ] ^
)
õõ^ _
.
õõ_ `
ToListAsync
õõ` k
(
õõk l
)
õõl m
;
õõm n
if
úú 
(
úú 
tasinmazlar
úú 
.
úú 
Any
úú 
(
úú  
)
úú  !
)
úú! "
{
ùù 
_context
ûû 
.
ûû 
Tasinmazlar
ûû $
.
ûû$ %
RemoveRange
ûû% 0
(
ûû0 1
tasinmazlar
ûû1 <
)
ûû< =
;
ûû= >
await
üü 
_context
üü 
.
üü 
SaveChangesAsync
üü /
(
üü/ 0
)
üü0 1
;
üü1 2
await
¢¢ 
_loggingService
¢¢ %
.
¢¢% &
	LogAction
¢¢& /
(
¢¢/ 0
kullaniciId
¢¢0 ;
,
¢¢; <
$num
¢¢= >
,
¢¢> ?
$num
¢¢@ A
,
¢¢A B
$"
¢¢C E
$str
¢¢E a
{
¢¢a b
string
¢¢b h
.
¢¢h i
Join
¢¢i m
(
¢¢m n
$str
¢¢n r
,
¢¢r s
ids
¢¢t w
)
¢¢w x
}
¢¢x y
"
¢¢y z
,
¢¢z {
	ipAddress¢¢| Ö
)¢¢Ö Ü
;¢¢Ü á
}
££ 
else
§§ 
{
•• 
await
ßß 
_loggingService
ßß %
.
ßß% &
	LogAction
ßß& /
(
ßß/ 0
kullaniciId
ßß0 ;
,
ßß; <
$num
ßß= >
,
ßß> ?
$num
ßß@ A
,
ßßA B
$"
ßßC E
$str
ßßE j
{
ßßj k
string
ßßk q
.
ßßq r
Join
ßßr v
(
ßßv w
$str
ßßw {
,
ßß{ |
idsßß} Ä
)ßßÄ Å
}ßßÅ Ç
$strßßÇ é
"ßßé è
,ßßè ê
	ipAddressßßë ö
)ßßö õ
;ßßõ ú
}
®® 
}
©© 	
public
¥¥ 
async
¥¥ 
Task
¥¥ 
<
¥¥ 
IEnumerable
¥¥ %
<
¥¥% &
Tasinmaz
¥¥& .
>
¥¥. /
>
¥¥/ 0#
GetByKullaniciIdAsync
¥¥1 F
(
¥¥F G
int
¥¥G J
kullaniciId
¥¥K V
,
¥¥V W
string
¥¥X ^
ilAd
¥¥_ c
=
¥¥d e
null
¥¥f j
,
¥¥j k
string
¥¥l r
ilceAd
¥¥s y
=
¥¥z {
null¥¥| Ä
,¥¥Ä Å
string¥¥Ç à
	mahalleAd¥¥â í
=¥¥ì î
null¥¥ï ô
,¥¥ô ö
string¥¥õ °
ada¥¥¢ •
=¥¥¶ ß
null¥¥® ¨
,¥¥¨ ≠
string¥¥Æ ¥
parsel¥¥µ ª
=¥¥º Ω
null¥¥æ ¬
,¥¥¬ √
string¥¥ƒ  
nitelik¥¥À “
=¥¥” ‘
null¥¥’ Ÿ
)¥¥Ÿ ⁄
{
µµ 	
var
∂∂ 
query
∂∂ 
=
∂∂ 
_context
∂∂  
.
∂∂  !
Tasinmazlar
∂∂! ,
.
∑∑ 
Include
∑∑ 
(
∑∑ 
t
∑∑ 
=>
∑∑ 
t
∑∑ 
.
∑∑  
Mahalle
∑∑  '
)
∑∑' (
.
∏∏ 
ThenInclude
∏∏  
(
∏∏  !
m
∏∏! "
=>
∏∏# %
m
∏∏& '
.
∏∏' (
Ilce
∏∏( ,
)
∏∏, -
.
ππ 
ThenInclude
ππ $
(
ππ$ %
i
ππ% &
=>
ππ' )
i
ππ* +
.
ππ+ ,
Il
ππ, .
)
ππ. /
.
∫∫ 
Where
∫∫ 
(
∫∫ 
t
∫∫ 
=>
∫∫ 
t
∫∫ 
.
∫∫ 
KullaniciId
∫∫ )
==
∫∫* ,
kullaniciId
∫∫- 8
)
∫∫8 9
;
∫∫9 :
if
ºº 
(
ºº 
!
ºº 
string
ºº 
.
ºº 
IsNullOrEmpty
ºº %
(
ºº% &
ilAd
ºº& *
)
ºº* +
)
ºº+ ,
{
ΩΩ 
query
ææ 
=
ææ 
query
ææ 
.
ææ 
Where
ææ #
(
ææ# $
t
ææ$ %
=>
ææ& (
t
ææ) *
.
ææ* +
Mahalle
ææ+ 2
.
ææ2 3
Ilce
ææ3 7
.
ææ7 8
Il
ææ8 :
.
ææ: ;
IlAdi
ææ; @
.
ææ@ A
Contains
ææA I
(
ææI J
ilAd
ææJ N
)
ææN O
)
ææO P
;
ææP Q
}
øø 
if
¡¡ 
(
¡¡ 
!
¡¡ 
string
¡¡ 
.
¡¡ 
IsNullOrEmpty
¡¡ %
(
¡¡% &
ilceAd
¡¡& ,
)
¡¡, -
)
¡¡- .
{
¬¬ 
query
√√ 
=
√√ 
query
√√ 
.
√√ 
Where
√√ #
(
√√# $
t
√√$ %
=>
√√& (
t
√√) *
.
√√* +
Mahalle
√√+ 2
.
√√2 3
Ilce
√√3 7
.
√√7 8
IlceAdi
√√8 ?
.
√√? @
Contains
√√@ H
(
√√H I
ilceAd
√√I O
)
√√O P
)
√√P Q
;
√√Q R
}
ƒƒ 
if
∆∆ 
(
∆∆ 
!
∆∆ 
string
∆∆ 
.
∆∆ 
IsNullOrEmpty
∆∆ %
(
∆∆% &
	mahalleAd
∆∆& /
)
∆∆/ 0
)
∆∆0 1
{
«« 
query
»» 
=
»» 
query
»» 
.
»» 
Where
»» #
(
»»# $
t
»»$ %
=>
»»& (
t
»») *
.
»»* +
Mahalle
»»+ 2
.
»»2 3

MahalleAdi
»»3 =
.
»»= >
Contains
»»> F
(
»»F G
	mahalleAd
»»G P
)
»»P Q
)
»»Q R
;
»»R S
}
…… 
if
ÀÀ 
(
ÀÀ 
!
ÀÀ 
string
ÀÀ 
.
ÀÀ 
IsNullOrEmpty
ÀÀ %
(
ÀÀ% &
ada
ÀÀ& )
)
ÀÀ) *
)
ÀÀ* +
{
ÃÃ 
query
ÕÕ 
=
ÕÕ 
query
ÕÕ 
.
ÕÕ 
Where
ÕÕ #
(
ÕÕ# $
t
ÕÕ$ %
=>
ÕÕ& (
t
ÕÕ) *
.
ÕÕ* +
Ada
ÕÕ+ .
.
ÕÕ. /
Contains
ÕÕ/ 7
(
ÕÕ7 8
ada
ÕÕ8 ;
)
ÕÕ; <
)
ÕÕ< =
;
ÕÕ= >
}
ŒŒ 
if
–– 
(
–– 
!
–– 
string
–– 
.
–– 
IsNullOrEmpty
–– %
(
––% &
parsel
––& ,
)
––, -
)
––- .
{
—— 
query
““ 
=
““ 
query
““ 
.
““ 
Where
““ #
(
““# $
t
““$ %
=>
““& (
t
““) *
.
““* +
Parsel
““+ 1
.
““1 2
Contains
““2 :
(
““: ;
parsel
““; A
)
““A B
)
““B C
;
““C D
}
”” 
if
’’ 
(
’’ 
!
’’ 
string
’’ 
.
’’ 
IsNullOrEmpty
’’ %
(
’’% &
nitelik
’’& -
)
’’- .
)
’’. /
{
÷÷ 
query
◊◊ 
=
◊◊ 
query
◊◊ 
.
◊◊ 
Where
◊◊ #
(
◊◊# $
t
◊◊$ %
=>
◊◊& (
t
◊◊) *
.
◊◊* +
Nitelik
◊◊+ 2
.
◊◊2 3
Contains
◊◊3 ;
(
◊◊; <
nitelik
◊◊< C
)
◊◊C D
)
◊◊D E
;
◊◊E F
}
ÿÿ 
return
⁄⁄ 
await
⁄⁄ 
query
⁄⁄ 
.
⁄⁄ 
ToListAsync
⁄⁄ *
(
⁄⁄* +
)
⁄⁄+ ,
;
⁄⁄, -
}
€€ 	
}
ﬁﬁ 
}ﬂﬂ ı.
^C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Services\MahalleService.cs
	namespace 	
	ilkDeneme
 
. 
Services 
{		 
public

 

class

 
MahalleService

 
:

  !
IMahalleService

" 1
{ 
private 
readonly  
ApplicationDbContext -
_context. 6
;6 7
public 
MahalleService 
(  
ApplicationDbContext 2
context3 :
): ;
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Mahalle& -
>- .
>. /
GetMahalleler0 =
(= >
)> ?
{ 	
return 
await 
_context !
.! "

Mahalleler" ,
., -
Include- 4
(4 5
t5 6
=>6 8
t8 9
.9 :
Ilce: >
)> ?
.? @
ThenInclude@ K
(K L
tL M
=>M O
tO P
.P Q
IlQ S
)S T
. 
ToListAsync 
( 
) 
; 
} 	
public 
async 
Task 
< 
Mahalle !
>! "

GetMahalle# -
(- .
int. 1
id2 4
)4 5
{ 	
return 
await 
_context !
.! "

Mahalleler" ,
. 
FirstOrDefaultAsync $
($ %
m% &
=>' )
m* +
.+ ,
	MahalleId, 5
==6 8
id9 ;
); <
;< =
} 	
public 
async 
Task 
< 
Mahalle !
>! "
CreateMahalle# 0
(0 1
Mahalle1 8
mahalle9 @
)@ A
{   	
_context!! 
.!! 

Mahalleler!! 
.!!  
Add!!  #
(!!# $
mahalle!!$ +
)!!+ ,
;!!, -
await"" 
_context"" 
."" 
SaveChangesAsync"" +
(""+ ,
)"", -
;""- .
return## 
mahalle## 
;## 
}$$ 	
public&& 
async&& 
Task&& 
<&& 
Mahalle&& !
>&&! "
UpdateMahalle&&# 0
(&&0 1
int&&1 4
id&&5 7
,&&7 8
Mahalle&&9 @
mahalle&&A H
)&&H I
{'' 	
if(( 
((( 
id(( 
!=(( 
mahalle(( 
.(( 
	MahalleId(( '
)((' (
{)) 
return** 
null** 
;** 
}++ 
_context-- 
.-- 
Entry-- 
(-- 
mahalle-- "
)--" #
.--# $
State--$ )
=--* +
EntityState--, 7
.--7 8
Modified--8 @
;--@ A
try// 
{00 
await11 
_context11 
.11 
SaveChangesAsync11 /
(11/ 0
)110 1
;111 2
return22 
mahalle22 
;22 
}33 
catch44 
(44 (
DbUpdateConcurrencyException44 /
)44/ 0
{55 
if66 
(66 
!66 
MahalleExists66 "
(66" #
id66# %
)66% &
)66& '
{77 
return88 
null88 
;88  
}99 
else:: 
{;; 
throw<< 
;<< 
}== 
}>> 
}?? 	
publicAA 
asyncAA 
TaskAA 
<AA 
boolAA 
>AA 
DeleteMahalleAA  -
(AA- .
intAA. 1
idAA2 4
)AA4 5
{BB 	
varCC 
mahalleCC 
=CC 
awaitCC 
_contextCC  (
.CC( )

MahallelerCC) 3
.CC3 4
	FindAsyncCC4 =
(CC= >
idCC> @
)CC@ A
;CCA B
ifDD 
(DD 
mahalleDD 
==DD 
nullDD 
)DD  
{EE 
returnFF 
falseFF 
;FF 
}GG 
_contextII 
.II 

MahallelerII 
.II  
RemoveII  &
(II& '
mahalleII' .
)II. /
;II/ 0
awaitJJ 
_contextJJ 
.JJ 
SaveChangesAsyncJJ +
(JJ+ ,
)JJ, -
;JJ- .
returnKK 
trueKK 
;KK 
}LL 	
privateNN 
boolNN 
MahalleExistsNN "
(NN" #
intNN# &
idNN' )
)NN) *
{OO 	
returnPP 
_contextPP 
.PP 

MahallelerPP &
.PP& '
AnyPP' *
(PP* +
ePP+ ,
=>PP- /
ePP0 1
.PP1 2
	MahalleIdPP2 ;
==PP< >
idPP? A
)PPA B
;PPB C
}QQ 	
publicTT 
asyncTT 
TaskTT 
<TT 
ListTT 
<TT 
MahalleTT &
>TT& '
>TT' (!
GetMahallelerByIlceIdTT) >
(TT> ?
intTT? B
ilceIdTTC I
)TTI J
{UU 	
returnVV 
awaitVV 
_contextVV !
.VV! "

MahallelerVV" ,
.WW 
WhereWW 
(WW 
mWW 
=>WW 
mWW 
.WW 
IlceIdWW $
==WW% '
ilceIdWW( .
)WW. /
.XX 
ToListAsyncXX 
(XX 
)XX 
;XX 
}YY 	
}[[ 
}\\ É!
ZC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Services\LogService.cs
public 
class 

LogService 
{ 
private		 
readonly		  
ApplicationDbContext		 )
_context		* 2
;		2 3
public 


LogService 
(  
ApplicationDbContext *
context+ 2
)2 3
{ 
_context 
= 
context 
; 
} 
public 

async 
Task 
< 
List 
< 
Log 
> 
>  
GetLogsAsync! -
(- .
LogFilterDTO. :
filter; A
)A B
{ 
var 
query 
= 
_context 
. 
Logs !
.! "
AsQueryable" -
(- .
). /
;/ 0
if 

( 
filter 
. 
KullaniciId 
. 
HasValue '
)' (
{ 	
query 
= 
query 
. 
Where 
(  
l  !
=>" $
l% &
.& '
KullaniciId' 2
==3 5
filter6 <
.< =
KullaniciId= H
.H I
ValueI N
)N O
;O P
} 	
if 

( 
filter 
. 

IslemTipId 
. 
HasValue &
)& '
{ 	
query 
= 
query 
. 
Where 
(  
l  !
=>" $
l% &
.& '

IslemTipId' 1
==2 4
filter5 ;
.; <

IslemTipId< F
.F G
ValueG L
)L M
;M N
} 	
if 

( 
filter 
. 
DurumId 
. 
HasValue #
)# $
{ 	
query   
=   
query   
.   
Where   
(    
l    !
=>  " $
l  % &
.  & '
DurumId  ' .
==  / 1
filter  2 8
.  8 9
DurumId  9 @
.  @ A
Value  A F
)  F G
;  G H
}!! 	
if## 

(## 
!## 
string## 
.## 
IsNullOrEmpty## !
(##! "
filter##" (
.##( )
Aciklama##) 1
)##1 2
)##2 3
{$$ 	
query%% 
=%% 
query%% 
.%% 
Where%% 
(%%  
l%%  !
=>%%" $
l%%% &
.%%& '
Aciklama%%' /
.%%/ 0
Contains%%0 8
(%%8 9
filter%%9 ?
.%%? @
Aciklama%%@ H
)%%H I
)%%I J
;%%J K
}&& 	
if(( 

((( 
filter(( 
.(( 
	TarihSaat(( 
.(( 
HasValue(( %
)((% &
{)) 	
query** 
=** 
query** 
.** 
Where** 
(**  
l**  !
=>**" $
l**% &
.**& '
	TarihSaat**' 0
.**0 1
Date**1 5
==**6 8
filter**9 ?
.**? @
	TarihSaat**@ I
.**I J
Value**J O
.**O P
Date**P T
)**T U
;**U V
}++ 	
return// 
await// 
query// 
.// 
ToListAsync// &
(//& '
)//' (
;//( )
}00 
public22 

async22 
Task22 
AddLogAsync22 !
(22! "
Log22" %
log22& )
)22) *
{33 
_context44 
.44 
Logs44 
.44 
Add44 
(44 
log44 
)44 
;44 
await55 
_context55 
.55 
SaveChangesAsync55 '
(55' (
)55( )
;55) *
}66 
}77 ø
^C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Services\LoggingService.cs
public 
class 
LoggingService 
: 
ILoggingService -
{ 
private 
readonly  
ApplicationDbContext )
_context* 2
;2 3
public		 

LoggingService		 
(		  
ApplicationDbContext		 .
context		/ 6
)		6 7
{

 
_context 
= 
context 
; 
} 
public 

async 
Task 
	LogAction 
(  
int  #
kullaniciId$ /
,/ 0
int1 4
durumId5 <
,< =
int> A

islemTipIdB L
,L M
stringN T
aciklamaU ]
,] ^
string_ e
ipf h
)h i
{ 
var 
log 
= 
new 
Log 
{ 	
KullaniciId 
= 
kullaniciId %
,% &
DurumId 
= 
durumId 
, 

IslemTipId 
= 

islemTipId #
,# $
Aciklama 
= 
aciklama 
,  
	TarihSaat 
= 
DateTime  
.  !
Now! $
,$ %
KullaniciIp 
= 
ip 
} 	
;	 

_context 
. 
Logs 
. 
Add 
( 
log 
) 
; 
await 
_context 
. 
SaveChangesAsync '
(' (
)( )
;) *
} 
} è&
YC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Services\IlService.cs
	namespace 	
	ilkDeneme
 
. 
Services 
{		 
public

 

class

 
	IlService

 
:

 

IIlService

 '
{ 
private 
readonly  
ApplicationDbContext -
_context. 6
;6 7
public 
	IlService 
(  
ApplicationDbContext -
context. 5
)5 6
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Il& (
>( )
>) *
GetIller+ 3
(3 4
)4 5
{ 	
return 
await 
_context !
.! "
Iller" '
. 
ToListAsync 
( 
) 
; 
} 	
public 
async 
Task 
< 
Il 
> 
GetIl #
(# $
int$ '
id( *
)* +
{ 	
return 
await 
_context !
.! "
Iller" '
. 
FirstOrDefaultAsync $
($ %
i% &
=>' )
i* +
.+ ,
IlId, 0
==1 3
id4 6
)6 7
;7 8
} 	
public 
async 
Task 
< 
Il 
> 
CreateIl &
(& '
Il' )
il* ,
), -
{   	
_context!! 
.!! 
Iller!! 
.!! 
Add!! 
(!! 
il!! !
)!!! "
;!!" #
await"" 
_context"" 
."" 
SaveChangesAsync"" +
(""+ ,
)"", -
;""- .
return## 
il## 
;## 
}$$ 	
public&& 
async&& 
Task&& 
<&& 
Il&& 
>&& 
UpdateIl&& &
(&&& '
int&&' *
id&&+ -
,&&- .
Il&&/ 1
il&&2 4
)&&4 5
{'' 	
if(( 
((( 
id(( 
!=(( 
il(( 
.(( 
IlId(( 
)(( 
{)) 
return** 
null** 
;** 
}++ 
_context-- 
.-- 
Entry-- 
(-- 
il-- 
)-- 
.-- 
State-- $
=--% &
EntityState--' 2
.--2 3
Modified--3 ;
;--; <
try// 
{00 
await11 
_context11 
.11 
SaveChangesAsync11 /
(11/ 0
)110 1
;111 2
return22 
il22 
;22 
}33 
catch44 
(44 (
DbUpdateConcurrencyException44 /
)44/ 0
{55 
if66 
(66 
!66 
IlExists66 
(66 
id66  
)66  !
)66! "
{77 
return88 
null88 
;88  
}99 
else:: 
{;; 
throw<< 
;<< 
}== 
}>> 
}?? 	
publicAA 
asyncAA 
TaskAA 
<AA 
boolAA 
>AA 
DeleteIlAA  (
(AA( )
intAA) ,
idAA- /
)AA/ 0
{BB 	
varCC 
ilCC 
=CC 
awaitCC 
_contextCC #
.CC# $
IllerCC$ )
.CC) *
	FindAsyncCC* 3
(CC3 4
idCC4 6
)CC6 7
;CC7 8
ifDD 
(DD 
ilDD 
==DD 
nullDD 
)DD 
{EE 
returnFF 
falseFF 
;FF 
}GG 
_contextII 
.II 
IllerII 
.II 
RemoveII !
(II! "
ilII" $
)II$ %
;II% &
awaitJJ 
_contextJJ 
.JJ 
SaveChangesAsyncJJ +
(JJ+ ,
)JJ, -
;JJ- .
returnKK 
trueKK 
;KK 
}LL 	
privateNN 
boolNN 
IlExistsNN 
(NN 
intNN !
idNN" $
)NN$ %
{OO 	
returnPP 
_contextPP 
.PP 
IllerPP !
.PP! "
AnyPP" %
(PP% &
ePP& '
=>PP( *
ePP+ ,
.PP, -
IlIdPP- 1
==PP2 4
idPP5 7
)PP7 8
;PP8 9
}QQ 	
}RR 
}SS ¯-
[C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Services\IlceService.cs
	namespace 	
	ilkDeneme
 
. 
Services 
{		 
public

 

class

 
IlceService

 
:

 
IIlceService

 +
{ 
private 
readonly  
ApplicationDbContext -
_context. 6
;6 7
public 
IlceService 
(  
ApplicationDbContext /
context0 7
)7 8
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Ilce& *
>* +
>+ ,

GetIlceler- 7
(7 8
)8 9
{ 	
return 
await 
_context !
.! "
Ilceler" )
. 
Include 
( 
i 
=> 
i 
.  
Il  "
)" #
. 
ToListAsync 
( 
) 
; 
} 	
public 
async 
Task 
< 
Ilce 
> 
GetIlce  '
(' (
int( +
id, .
). /
{ 	
return 
await 
_context !
.! "
Ilceler" )
. 
Include 
( 
i 
=> 
i 
.  
Il  "
)" #
. 
FirstOrDefaultAsync $
($ %
i% &
=>' )
i* +
.+ ,
IlceId, 2
==3 5
id6 8
)8 9
;9 :
}   	
public"" 
async"" 
Task"" 
<"" 
Ilce"" 
>"" 

CreateIlce""  *
(""* +
Ilce""+ /
ilce""0 4
)""4 5
{## 	
_context$$ 
.$$ 
Ilceler$$ 
.$$ 
Add$$  
($$  !
ilce$$! %
)$$% &
;$$& '
await%% 
_context%% 
.%% 
SaveChangesAsync%% +
(%%+ ,
)%%, -
;%%- .
return&& 
ilce&& 
;&& 
}'' 	
public)) 
async)) 
Task)) 
<)) 
Ilce)) 
>)) 

UpdateIlce))  *
())* +
int))+ .
id))/ 1
,))1 2
Ilce))3 7
ilce))8 <
)))< =
{** 	
if++ 
(++ 
id++ 
!=++ 
ilce++ 
.++ 
IlceId++ !
)++! "
{,, 
return-- 
null-- 
;-- 
}.. 
_context00 
.00 
Entry00 
(00 
ilce00 
)00  
.00  !
State00! &
=00' (
EntityState00) 4
.004 5
Modified005 =
;00= >
try22 
{33 
await44 
_context44 
.44 
SaveChangesAsync44 /
(44/ 0
)440 1
;441 2
return55 
ilce55 
;55 
}66 
catch77 
(77 (
DbUpdateConcurrencyException77 /
)77/ 0
{88 
if99 
(99 
!99 

IlceExists99 
(99  
id99  "
)99" #
)99# $
{:: 
return;; 
null;; 
;;;  
}<< 
else== 
{>> 
throw?? 
;?? 
}@@ 
}AA 
}BB 	
publicDD 
asyncDD 
TaskDD 
<DD 
boolDD 
>DD 

DeleteIlceDD  *
(DD* +
intDD+ .
idDD/ 1
)DD1 2
{EE 	
varFF 
ilceFF 
=FF 
awaitFF 
_contextFF %
.FF% &
IlcelerFF& -
.FF- .
	FindAsyncFF. 7
(FF7 8
idFF8 :
)FF: ;
;FF; <
ifGG 
(GG 
ilceGG 
==GG 
nullGG 
)GG 
{HH 
returnII 
falseII 
;II 
}JJ 
_contextLL 
.LL 
IlcelerLL 
.LL 
RemoveLL #
(LL# $
ilceLL$ (
)LL( )
;LL) *
awaitMM 
_contextMM 
.MM 
SaveChangesAsyncMM +
(MM+ ,
)MM, -
;MM- .
returnNN 
trueNN 
;NN 
}OO 	
privateQQ 
boolQQ 

IlceExistsQQ 
(QQ  
intQQ  #
idQQ$ &
)QQ& '
{RR 	
returnSS 
_contextSS 
.SS 
IlcelerSS #
.SS# $
AnySS$ '
(SS' (
eSS( )
=>SS* ,
eSS- .
.SS. /
IlceIdSS/ 5
==SS6 8
idSS9 ;
)SS; <
;SS< =
}TT 	
publicUU 
asyncUU 
TaskUU 
<UU 
ListUU 
<UU 
IlceUU #
>UU# $
>UU$ %
GetIlcelerByIlIdUU& 6
(UU6 7
intUU7 :
ilIdUU; ?
)UU? @
{VV 	
returnWW 
awaitWW 
_contextWW !
.WW! "
IlcelerWW" )
.WW) *
WhereWW* /
(WW/ 0
ilceWW0 4
=>WW5 7
ilceWW8 <
.WW< =
IlIdWW= A
==WWB D
ilIdWWE I
)WWI J
.WWJ K
ToListAsyncWWK V
(WWV W
)WWW X
;WWX Y
}XX 	
}YY 
}[[ •

NC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Program.cs
	namespace

 	
	ilkDeneme


 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
}   ‡ 
uC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Migrations\20240730122136_LogTableModelBuilder.cs
	namespace 	
	ilkDeneme
 
. 

Migrations 
{ 
public 

partial 
class  
LogTableModelBuilder -
:. /
	Migration0 9
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder		 
.		 

InsertData		 '
(		' (
table

 
:

 
$str

 !
,

! "
columns 
: 
new 
[ 
] 
{  
$str! *
,* +
$str, 6
}7 8
,8 9
values 
: 
new 
object "
[" #
,# $
]$ %
{ 
{ 
$num 
, 
$str #
}$ %
,% &
{ 
$num 
, 
$str $
}% &
} 
) 
; 
migrationBuilder 
. 

InsertData '
(' (
table 
: 
$str %
,% &
columns 
: 
new 
[ 
] 
{  
$str! -
,- .
$str/ 9
}: ;
,; <
values 
: 
new 
object "
[" #
,# $
]$ %
{ 
{ 
$num 
, 
$str %
}& '
,' (
{ 
$num 
, 
$str %
}& '
,' (
{ 
$num 
, 
$str  
}! "
," #
{ 
$num 
, 
$str  
}! "
} 
) 
; 
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder   
.   

DeleteData   '
(  ' (
table!! 
:!! 
$str!! !
,!!! "
	keyColumn"" 
:"" 
$str"" $
,""$ %
keyValue## 
:## 
$num## 
)## 
;## 
migrationBuilder%% 
.%% 

DeleteData%% '
(%%' (
table&& 
:&& 
$str&& !
,&&! "
	keyColumn'' 
:'' 
$str'' $
,''$ %
keyValue(( 
:(( 
$num(( 
)(( 
;(( 
migrationBuilder** 
.** 

DeleteData** '
(**' (
table++ 
:++ 
$str++ %
,++% &
	keyColumn,, 
:,, 
$str,, '
,,,' (
keyValue-- 
:-- 
$num-- 
)-- 
;-- 
migrationBuilder// 
.// 

DeleteData// '
(//' (
table00 
:00 
$str00 %
,00% &
	keyColumn11 
:11 
$str11 '
,11' (
keyValue22 
:22 
$num22 
)22 
;22 
migrationBuilder44 
.44 

DeleteData44 '
(44' (
table55 
:55 
$str55 %
,55% &
	keyColumn66 
:66 
$str66 '
,66' (
keyValue77 
:77 
$num77 
)77 
;77 
migrationBuilder99 
.99 

DeleteData99 '
(99' (
table:: 
::: 
$str:: %
,::% &
	keyColumn;; 
:;; 
$str;; '
,;;' (
keyValue<< 
:<< 
$num<< 
)<< 
;<< 
}== 	
}>> 
}?? ‚1
lC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Migrations\20240730090053_AddLogTable.cs
	namespace 	
	ilkDeneme
 
. 

Migrations 
{ 
public 

partial 
class 
AddLogTable $
:% &
	Migration' 0
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str  
,  !
columns 
: 
table 
=> !
new" %
{ 
DurumId 
= 
table #
.# $
Column$ *
<* +
int+ .
>. /
(/ 0
nullable0 8
:8 9
false: ?
)? @
. 

Annotation #
(# $
$str$ D
,D E)
NpgsqlValueGenerationStrategyF c
.c d#
IdentityByDefaultColumnd {
){ |
,| }
DurumAdi 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
nullable4 <
:< =
true> B
)B C
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 2
,2 3
x4 5
=>6 8
x9 :
.: ;
DurumId; B
)B C
;C D
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str $
,$ %
columns 
: 
table 
=> !
new" %
{ 

IslemTipId 
=  
table! &
.& '
Column' -
<- .
int. 1
>1 2
(2 3
nullable3 ;
:; <
false= B
)B C
. 

Annotation #
(# $
$str$ D
,D E)
NpgsqlValueGenerationStrategyF c
.c d#
IdentityByDefaultColumnd {
){ |
,| }
IslemAdi 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
nullable4 <
:< =
true> B
)B C
} 
, 
constraints   
:   
table   "
=>  # %
{!! 
table"" 
."" 

PrimaryKey"" $
(""$ %
$str""% 6
,""6 7
x""8 9
=>"": <
x""= >
.""> ?

IslemTipId""? I
)""I J
;""J K
}## 
)## 
;## 
migrationBuilder%% 
.%% 
CreateTable%% (
(%%( )
name&& 
:&& 
$str&& 
,&& 
columns'' 
:'' 
table'' 
=>'' !
new''" %
{(( 
LogId)) 
=)) 
table)) !
.))! "
Column))" (
<))( )
int))) ,
>)), -
())- .
nullable)). 6
:))6 7
false))8 =
)))= >
.** 

Annotation** #
(**# $
$str**$ D
,**D E)
NpgsqlValueGenerationStrategy**F c
.**c d#
IdentityByDefaultColumn**d {
)**{ |
,**| }
KullaniciId++ 
=++  !
table++" '
.++' (
Column++( .
<++. /
int++/ 2
>++2 3
(++3 4
nullable++4 <
:++< =
false++> C
)++C D
,++D E
DurumId,, 
=,, 
table,, #
.,,# $
Column,,$ *
<,,* +
int,,+ .
>,,. /
(,,/ 0
nullable,,0 8
:,,8 9
false,,: ?
),,? @
,,,@ A

IslemTipId-- 
=--  
table--! &
.--& '
Column--' -
<--- .
int--. 1
>--1 2
(--2 3
nullable--3 ;
:--; <
false--= B
)--B C
,--C D
Aciklama.. 
=.. 
table.. $
...$ %
Column..% +
<..+ ,
string.., 2
>..2 3
(..3 4
nullable..4 <
:..< =
true..> B
)..B C
,..C D
	TarihSaat// 
=// 
table//  %
.//% &
Column//& ,
<//, -
DateTime//- 5
>//5 6
(//6 7
nullable//7 ?
://? @
false//A F
)//F G
,//G H
KullaniciIp00 
=00  !
table00" '
.00' (
Column00( .
<00. /
string00/ 5
>005 6
(006 7
nullable007 ?
:00? @
true00A E
)00E F
}11 
,11 
constraints22 
:22 
table22 "
=>22# %
{33 
table44 
.44 

PrimaryKey44 $
(44$ %
$str44% .
,44. /
x440 1
=>442 4
x445 6
.446 7
LogId447 <
)44< =
;44= >
}55 
)55 
;55 
}66 	
	protected88 
override88 
void88 
Down88  $
(88$ %
MigrationBuilder88% 5
migrationBuilder886 F
)88F G
{99 	
migrationBuilder:: 
.:: 
	DropTable:: &
(::& '
name;; 
:;; 
$str;;  
);;  !
;;;! "
migrationBuilder== 
.== 
	DropTable== &
(==& '
name>> 
:>> 
$str>> $
)>>$ %
;>>% &
migrationBuilder@@ 
.@@ 
	DropTable@@ &
(@@& '
nameAA 
:AA 
$strAA 
)AA 
;AA 
}BB 	
}CC 
}DD ç"
lC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Migrations\20240724074814_UserEklendi.cs
	namespace 	
	ilkDeneme
 
. 

Migrations 
{ 
public 

partial 
class 
UserEklendi $
:% &
	Migration' 0
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
KullaniciId 
=  !
table" '
.' (
Column( .
<. /
int/ 2
>2 3
(3 4
nullable4 <
:< =
false> C
)C D
. 

Annotation #
(# $
$str$ D
,D E)
NpgsqlValueGenerationStrategyF c
.c d#
IdentityByDefaultColumnd {
){ |
,| }
Email 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
nullable1 9
:9 :
true; ?
)? @
,@ A
PasswordHash  
=! "
table# (
.( )
Column) /
</ 0
byte0 4
[4 5
]5 6
>6 7
(7 8
nullable8 @
:@ A
trueB F
)F G
,G H
PasswordSalt  
=! "
table# (
.( )
Column) /
</ 0
byte0 4
[4 5
]5 6
>6 7
(7 8
nullable8 @
:@ A
trueB F
)F G
,G H
Role 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
nullable0 8
:8 9
true: >
)> ?
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% /
,/ 0
x1 2
=>3 5
x6 7
.7 8
KullaniciId8 C
)C D
;D E
} 
) 
; 
migrationBuilder 
. 
CreateIndex (
(( )
name 
: 
$str 2
,2 3
table 
: 
$str $
,$ %
column 
: 
$str %
)% &
;& '
migrationBuilder   
.   
AddForeignKey   *
(  * +
name!! 
:!! 
$str!! 8
,!!8 9
table"" 
:"" 
$str"" $
,""$ %
column## 
:## 
$str## %
,##% &
principalTable$$ 
:$$ 
$str$$  '
,$$' (
principalColumn%% 
:%%  
$str%%! .
,%%. /
onDelete&& 
:&& 
ReferentialAction&& +
.&&+ ,
Cascade&&, 3
)&&3 4
;&&4 5
}'' 	
	protected)) 
override)) 
void)) 
Down))  $
())$ %
MigrationBuilder))% 5
migrationBuilder))6 F
)))F G
{** 	
migrationBuilder++ 
.++ 
DropForeignKey++ +
(+++ ,
name,, 
:,, 
$str,, 8
,,,8 9
table-- 
:-- 
$str-- $
)--$ %
;--% &
migrationBuilder// 
.// 
	DropTable// &
(//& '
name00 
:00 
$str00 
)00 
;00 
migrationBuilder22 
.22 
	DropIndex22 &
(22& '
name33 
:33 
$str33 2
,332 3
table44 
:44 
$str44 $
)44$ %
;44% &
}55 	
}66 
}77 ˛T
nC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Migrations\20240723160255_InitialCreate.cs
	namespace 	
	ilkDeneme
 
. 

Migrations 
{ 
public 

partial 
class 
InitialCreate &
:' (
	Migration) 2
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{		 	
migrationBuilder

 
.

 
CreateTable

 (
(

( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
IlId 
= 
table  
.  !
Column! '
<' (
int( +
>+ ,
(, -
nullable- 5
:5 6
false7 <
)< =
. 

Annotation #
(# $
$str$ D
,D E)
NpgsqlValueGenerationStrategyF c
.c d#
IdentityByDefaultColumnd {
){ |
,| }
IlAdi 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
nullable1 9
:9 :
true; ?
)? @
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% /
,/ 0
x1 2
=>3 5
x6 7
.7 8
IlId8 <
)< =
;= >
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
,  
columns 
: 
table 
=> !
new" %
{ 
IlceId 
= 
table "
." #
Column# )
<) *
int* -
>- .
(. /
nullable/ 7
:7 8
false9 >
)> ?
. 

Annotation #
(# $
$str$ D
,D E)
NpgsqlValueGenerationStrategyF c
.c d#
IdentityByDefaultColumnd {
){ |
,| }
IlceAdi 
= 
table #
.# $
Column$ *
<* +
string+ 1
>1 2
(2 3
nullable3 ;
:; <
true= A
)A B
,B C
IlId 
= 
table  
.  !
Column! '
<' (
int( +
>+ ,
(, -
nullable- 5
:5 6
false7 <
)< =
} 
, 
constraints   
:   
table   "
=>  # %
{!! 
table"" 
."" 

PrimaryKey"" $
(""$ %
$str""% 1
,""1 2
x""3 4
=>""5 7
x""8 9
.""9 :
IlceId"": @
)""@ A
;""A B
table## 
.## 

ForeignKey## $
(##$ %
name$$ 
:$$ 
$str$$ 5
,$$5 6
column%% 
:%% 
x%%  !
=>%%" $
x%%% &
.%%& '
IlId%%' +
,%%+ ,
principalTable&& &
:&&& '
$str&&( /
,&&/ 0
principalColumn'' '
:''' (
$str'') /
,''/ 0
onDelete((  
:((  !
ReferentialAction((" 3
.((3 4
Cascade((4 ;
)((; <
;((< =
})) 
))) 
;)) 
migrationBuilder++ 
.++ 
CreateTable++ (
(++( )
name,, 
:,, 
$str,, "
,,," #
columns-- 
:-- 
table-- 
=>-- !
new--" %
{.. 
	MahalleId// 
=// 
table//  %
.//% &
Column//& ,
<//, -
int//- 0
>//0 1
(//1 2
nullable//2 :
://: ;
false//< A
)//A B
.00 

Annotation00 #
(00# $
$str00$ D
,00D E)
NpgsqlValueGenerationStrategy00F c
.00c d#
IdentityByDefaultColumn00d {
)00{ |
,00| }

MahalleAdi11 
=11  
table11! &
.11& '
Column11' -
<11- .
string11. 4
>114 5
(115 6
nullable116 >
:11> ?
true11@ D
)11D E
,11E F
IlceId22 
=22 
table22 "
.22" #
Column22# )
<22) *
int22* -
>22- .
(22. /
nullable22/ 7
:227 8
false229 >
)22> ?
}33 
,33 
constraints44 
:44 
table44 "
=>44# %
{55 
table66 
.66 

PrimaryKey66 $
(66$ %
$str66% 4
,664 5
x666 7
=>668 :
x66; <
.66< =
	MahalleId66= F
)66F G
;66G H
table77 
.77 

ForeignKey77 $
(77$ %
name88 
:88 
$str88 <
,88< =
column99 
:99 
x99  !
=>99" $
x99% &
.99& '
IlceId99' -
,99- .
principalTable:: &
:::& '
$str::( 1
,::1 2
principalColumn;; '
:;;' (
$str;;) 1
,;;1 2
onDelete<<  
:<<  !
ReferentialAction<<" 3
.<<3 4
Cascade<<4 ;
)<<; <
;<<< =
}== 
)== 
;== 
migrationBuilder?? 
.?? 
CreateTable?? (
(??( )
name@@ 
:@@ 
$str@@ #
,@@# $
columnsAA 
:AA 
tableAA 
=>AA !
newAA" %
{BB 

TasinmazIdCC 
=CC  
tableCC! &
.CC& '
ColumnCC' -
<CC- .
intCC. 1
>CC1 2
(CC2 3
nullableCC3 ;
:CC; <
falseCC= B
)CCB C
.DD 

AnnotationDD #
(DD# $
$strDD$ D
,DDD E)
NpgsqlValueGenerationStrategyDDF c
.DDc d#
IdentityByDefaultColumnDDd {
)DD{ |
,DD| }
AdaEE 
=EE 
tableEE 
.EE  
ColumnEE  &
<EE& '
stringEE' -
>EE- .
(EE. /
nullableEE/ 7
:EE7 8
trueEE9 =
)EE= >
,EE> ?
ParselFF 
=FF 
tableFF "
.FF" #
ColumnFF# )
<FF) *
stringFF* 0
>FF0 1
(FF1 2
nullableFF2 :
:FF: ;
trueFF< @
)FF@ A
,FFA B
NitelikGG 
=GG 
tableGG #
.GG# $
ColumnGG$ *
<GG* +
stringGG+ 1
>GG1 2
(GG2 3
nullableGG3 ;
:GG; <
trueGG= A
)GGA B
,GGB C
KoordinatBilgileriHH &
=HH' (
tableHH) .
.HH. /
ColumnHH/ 5
<HH5 6
stringHH6 <
>HH< =
(HH= >
nullableHH> F
:HHF G
trueHHH L
)HHL M
,HHM N
KullaniciIdII 
=II  !
tableII" '
.II' (
ColumnII( .
<II. /
intII/ 2
>II2 3
(II3 4
nullableII4 <
:II< =
falseII> C
)IIC D
,IID E
	MahalleIdJJ 
=JJ 
tableJJ  %
.JJ% &
ColumnJJ& ,
<JJ, -
intJJ- 0
>JJ0 1
(JJ1 2
nullableJJ2 :
:JJ: ;
falseJJ< A
)JJA B
}KK 
,KK 
constraintsLL 
:LL 
tableLL "
=>LL# %
{MM 
tableNN 
.NN 

PrimaryKeyNN $
(NN$ %
$strNN% 5
,NN5 6
xNN7 8
=>NN9 ;
xNN< =
.NN= >

TasinmazIdNN> H
)NNH I
;NNI J
tableOO 
.OO 

ForeignKeyOO $
(OO$ %
namePP 
:PP 
$strPP C
,PPC D
columnQQ 
:QQ 
xQQ  !
=>QQ" $
xQQ% &
.QQ& '
	MahalleIdQQ' 0
,QQ0 1
principalTableRR &
:RR& '
$strRR( 4
,RR4 5
principalColumnSS '
:SS' (
$strSS) 4
,SS4 5
onDeleteTT  
:TT  !
ReferentialActionTT" 3
.TT3 4
CascadeTT4 ;
)TT; <
;TT< =
}UU 
)UU 
;UU 
migrationBuilderWW 
.WW 
CreateIndexWW (
(WW( )
nameXX 
:XX 
$strXX '
,XX' (
tableYY 
:YY 
$strYY  
,YY  !
columnZZ 
:ZZ 
$strZZ 
)ZZ 
;ZZ  
migrationBuilder\\ 
.\\ 
CreateIndex\\ (
(\\( )
name]] 
:]] 
$str]] ,
,]], -
table^^ 
:^^ 
$str^^ #
,^^# $
column__ 
:__ 
$str__  
)__  !
;__! "
migrationBuilderaa 
.aa 
CreateIndexaa (
(aa( )
namebb 
:bb 
$strbb 0
,bb0 1
tablecc 
:cc 
$strcc $
,cc$ %
columndd 
:dd 
$strdd #
)dd# $
;dd$ %
}ee 	
	protectedgg 
overridegg 
voidgg 
Downgg  $
(gg$ %
MigrationBuildergg% 5
migrationBuildergg6 F
)ggF G
{hh 	
migrationBuilderii 
.ii 
	DropTableii &
(ii& '
namejj 
:jj 
$strjj #
)jj# $
;jj$ %
migrationBuilderll 
.ll 
	DropTablell &
(ll& '
namemm 
:mm 
$strmm "
)mm" #
;mm# $
migrationBuilderoo 
.oo 
	DropTableoo &
(oo& '
namepp 
:pp 
$strpp 
)pp  
;pp  !
migrationBuilderrr 
.rr 
	DropTablerr &
(rr& '
namess 
:ss 
$strss 
)ss 
;ss 
}tt 	
}uu 
}vv ˝
_C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Interfaces\IUsersService.cs
public 
	interface 
IUserService 
{ 
Task 
< 	
IEnumerable	 
< 
User 
> 
> 
GetAllUsersAsync ,
(, -
)- .
;. /
Task		 
DeleteUserAsync			 
(		 
int		 
id		 
)		  
;		  !
Task

 
AddUserAsync

	 
(

 
UserDTO

 
userDto

 %
)

% &
;

& '
Task 
UpdateUserAsync	 
( 
UserDTO  
userDto! (
)( )
;) *
Task 
< 	
User	 
> 
GetUserByIdAsync 
(  
int  #
id$ &
)& '
;' (
Task 
< 	
string	 
> *
GetUserEmailByKullaniciIdAsync /
(/ 0
int0 3
kullaniciId4 ?
)? @
;@ A
} º
dC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Interfaces\ITasinmazInterface.cs
	namespace 	
	ilkDeneme
 
. 
Services 
{ 
public 

	interface 
ITasinmazInterface '
{ 
Task		 
<		 
List		 
<		 
Tasinmaz		 
>		 
>		 "
GetAllTasinmazlarAsync		 3
(		3 4
)		4 5
;		5 6
Task

 
<

 
Tasinmaz

 
>

  
GetTasinmazByIdAsync

 +
(

+ ,
int

, /
id

0 2
)

2 3
;

3 4
Task 
< 
Tasinmaz 
> 
AddTasinmazAsync '
(' (
Tasinmaz( 0
tasinmaz1 9
,9 :
int; >
kullaniciId? J
,J K
stringL R
	ipAddressS \
)\ ]
;] ^
Task 
< 
Tasinmaz 
> 
UpdateTasinmazAsync *
(* +
Tasinmaz+ 3
tasinmaz4 <
,< =
int> A
kullaniciIdB M
,M N
stringO U
	ipAddressV _
)_ `
;` a
Task 
DeleteTasinmazAsync  
(  !
int! $
id% '
,' (
int) ,
kullaniciId- 8
,8 9
string: @
	ipAddressA J
)J K
;K L
Task "
DeleteTasinmazlarAsync #
(# $
List$ (
<( )
int) ,
>, -
ids. 1
,1 2
int3 6
kullaniciId7 B
,B C
stringD J
	ipAddressK T
)T U
;U V
Task 
< 
IEnumerable 
< 
Tasinmaz !
>! "
>" #!
GetByKullaniciIdAsync$ 9
(9 :
int 
kullaniciId 
, 
string 
ilAd 
= 
null 
, 
string 
ilceAd 
= 
null  
,  !
string 
	mahalleAd 
= 
null #
,# $
string 
ada 
= 
null 
, 
string 
parsel 
= 
null  
,  !
string 
nitelik 
= 
null !
)! "
;" #
} 
} ⁄
cC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Interfaces\IMahalleInterface.cs
	namespace 	
	ilkDeneme
 
. 

Interfaces 
{ 
public 

	interface 
IMahalleService $
{ 
Task		 
<		 
IEnumerable		 
<		 
Mahalle		  
>		  !
>		! "
GetMahalleler		# 0
(		0 1
)		1 2
;		2 3
Task

 
<

 
Mahalle

 
>

 

GetMahalle

  
(

  !
int

! $
id

% '
)

' (
;

( )
Task 
< 
Mahalle 
> 
CreateMahalle #
(# $
Mahalle$ +
mahalle, 3
)3 4
;4 5
Task 
< 
Mahalle 
> 
UpdateMahalle #
(# $
int$ '
id( *
,* +
Mahalle, 3
mahalle4 ;
); <
;< =
Task 
< 
bool 
> 
DeleteMahalle  
(  !
int! $
id% '
)' (
;( )
Task 
< 
List 
< 
Mahalle 
> 
> !
GetMahallelerByIlceId 1
(1 2
int2 5
ilceId6 <
)< =
;= >
} 
} ú
aC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Interfaces\ILoggingService.cs
public 
	interface 
ILoggingService  
{ 
Task 
	LogAction	 
( 
int 
kullaniciId "
," #
int$ '
durumId( /
,/ 0
int1 4

islemTipId5 ?
,? @
stringA G
aciklamaH P
,P Q
stringR X
ipY [
)[ \
;\ ]
} ¢
_C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Interfaces\IlceInterface.cs
	namespace 	
	ilkDeneme
 
. 

Interfaces 
{ 
public 

	interface 
IIlceService !
{ 
Task		 
<		 
IEnumerable		 
<		 
Ilce		 
>		 
>		 

GetIlceler		  *
(		* +
)		+ ,
;		, -
Task

 
<

 
Ilce

 
>

 
GetIlce

 
(

 
int

 
id

 !
)

! "
;

" #
Task 
< 
Ilce 
> 

CreateIlce 
( 
Ilce "
ilce# '
)' (
;( )
Task 
< 
Ilce 
> 

UpdateIlce 
( 
int !
id" $
,$ %
Ilce& *
ilce+ /
)/ 0
;0 1
Task 
< 
bool 
> 

DeleteIlce 
( 
int !
id" $
)$ %
;% &
Task 
< 
List 
< 
Ilce 
> 
> 
GetIlcelerByIlId )
() *
int* -
ilId. 2
)2 3
;3 4
} 
} £	
\C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Interfaces\IInterface.cs
	namespace 	
	ilkDeneme
 
. 

Interfaces 
{ 
public 

	interface 

IIlService 
{ 
Task		 
<		 
IEnumerable		 
<		 
Il		 
>		 
>		 
GetIller		 &
(		& '
)		' (
;		( )
Task

 
<

 
Il

 
>

 
GetIl

 
(

 
int

 
id

 
)

 
;

 
Task 
< 
Il 
> 
CreateIl 
( 
Il 
il 
)  
;  !
Task 
< 
Il 
> 
UpdateIl 
( 
int 
id  
,  !
Il" $
il% '
)' (
;( )
Task 
< 
bool 
> 
DeleteIl 
( 
int 
id  "
)" #
;# $
} 
} ®
aC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Interfaces\IAuthRepository.cs
	namespace 	
	ilkDeneme
 
. 

Interfaces 
{ 
public 

	interface 
IAuthRepository $
{ 
Task 
< 
User 
> 
Register 
( 
User 
user  $
,$ %
string& ,
password- 5
)5 6
;6 7
Task		 
<		 
User		 
>		 
Login		 
(		 
string		 
Email		 $
,		$ %
string		& ,
password		- 5
)		5 6
;		6 7
Task 
< 
bool 
> 

UserExists 
( 
string $
Email% *
)* +
;+ ,
} 
} ä4
`C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Interfaces\AuthRepository.cs
	namespace		 	
	ilkDeneme		
 
.		 

Interfaces		 
{

 
public 

class 
AuthRepository 
:  !
IAuthRepository" 1
{ 
public  
ApplicationDbContext #
_context$ ,
;, -
public 
AuthRepository 
(  
ApplicationDbContext 2
context3 :
): ;
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
User 
> 
Register  (
(( )
User) -
user. 2
,2 3
string4 :
password; C
)C D
{ 	
byte 
[ 
] 
passwordHash 
,  
passwordSalt! -
;- .
CreatePasswordHash 
( 
password '
,' (
out) ,
passwordHash- 9
,9 :
out; >
passwordSalt? K
)K L
;L M
user 
. 
PasswordHash 
= 
passwordHash +
;+ ,
user 
. 
PasswordSalt 
= 
passwordSalt +
;+ ,
await 
_context 
. 
Users  
.  !
AddAsync! )
() *
user* .
). /
;/ 0
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
return 
user 
; 
}   	
private"" 
void"" 
CreatePasswordHash"" '
(""' (
string""( .
password""/ 7
,""7 8
out""9 <
byte""= A
[""A B
]""B C
passwordHash""D P
,""P Q
out""R U
byte""V Z
[""Z [
]""[ \
passwordSalt""] i
)""i j
{## 	
using$$ 
($$ 
var$$ 
hmac$$ 
=$$ 
new$$ 
System$$  &
.$$& '
Security$$' /
.$$/ 0
Cryptography$$0 <
.$$< =

HMACSHA256$$= G
($$G H
)$$H I
)$$I J
{%% 
passwordSalt&& 
=&& 
hmac&& #
.&&# $
Key&&$ '
;&&' (
passwordHash'' 
='' 
hmac'' #
.''# $
ComputeHash''$ /
(''/ 0
System''0 6
.''6 7
Text''7 ;
.''; <
Encoding''< D
.''D E
UTF8''E I
.''I J
GetBytes''J R
(''R S
password''S [
)''[ \
)''\ ]
;''] ^
}(( 
})) 	
public++ 
async++ 
Task++ 
<++ 
User++ 
>++ 
Login++  %
(++% &
string++& ,
username++- 5
,++5 6
string++7 =
password++> F
)++F G
{,, 	
var-- 
user-- 
=-- 
await-- 
_context-- $
.--$ %
Users--% *
.--* +
FirstOrDefaultAsync--+ >
(--> ?
x--? @
=>--@ B
x--B C
.--C D
Email--D I
==--I K
username--L T
)--T U
;--U V
if.. 
(.. 
user.. 
==.. 
null.. 
).. 
{// 
return00 
null00 
;00 
}11 
if33 
(33 
!33 
VerifyPasswordHash33 #
(33# $
password33$ ,
,33, -
user33. 2
.332 3
PasswordHash333 ?
,33? @
user33A E
.33E F
PasswordSalt33F R
)33R S
)33S T
{44 
return55 
null55 
;55 
}66 
return77 
user77 
;77 
}99 	
private;; 
bool;; 
VerifyPasswordHash;; '
(;;' (
string;;( .
password;;/ 7
,;;7 8
byte;;9 =
[;;= >
];;> ?
userPasswordHash;;@ P
,;;P Q
byte;;R V
[;;V W
];;W X
userPasswordSalt;;Y i
);;i j
{<< 	
using== 
(== 
var== 
hmac== 
=== 
new== !
System==" (
.==( )
Security==) 1
.==1 2
Cryptography==2 >
.==> ?

HMACSHA256==? I
(==I J
userPasswordSalt==J Z
)==Z [
)==[ \
{>> 
var?? 
computedHash??  
=??  !
hmac??! %
.??% &
ComputeHash??& 1
(??1 2
System??2 8
.??8 9
Text??9 =
.??= >
Encoding??> F
.??F G
UTF8??G K
.??K L
GetBytes??L T
(??T U
password??U ]
)??] ^
)??^ _
;??_ `
for@@ 
(@@ 
int@@ 
i@@ 
=@@ 
$num@@ 
;@@  
i@@! "
<@@# $
computedHash@@% 1
.@@1 2
Length@@2 8
;@@8 9
i@@: ;
++@@; =
)@@= >
{AA 
ifBB 
(BB 
computedHashBB $
[BB$ %
iBB% &
]BB& '
!=BB( *
userPasswordHashBB+ ;
[BB; <
iBB< =
]BB= >
)BB> ?
{CC 
returnDD 
falseDD $
;DD$ %
}EE 
}GG 
returnHH 
trueHH 
;HH 
}II 
}JJ 
publicLL 
asyncLL 
TaskLL 
<LL 
boolLL 
>LL 

UserExistsLL  *
(LL* +
stringLL+ 1
userNameLL2 :
)LL: ;
{MM 	
ifNN 
(NN 
awaitNN 
_contextNN 
.NN 
UsersNN #
.NN# $
AnyAsyncNN$ ,
(NN, -
xNN- .
=>NN/ 1
xNN2 3
.NN3 4
EmailNN4 9
==NN: <
userNameNN= E
)NNE F
)NNF G
{OO 
returnPP 
truePP 
;PP 
}QQ 
returnRR 
falseRR 
;RR 
}SS 	
}TT 
}UU ¸
[C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Helpers\JwtExtension.cs
	namespace 	
	ilkDeneme
 
. 
Helpers 
{ 
public 

static 
class 
JwtExtension $
{ 
public 
static 
void 
AddApplicationError .
(. /
this/ 3
HttpResponse4 @
responseA I
,I J
stringJ P
messageQ X
)X Y
{ 	
response		 
.		 
Headers		 
.		 
Add		  
(		  !
$str		! 4
,		4 5
message		6 =
)		= >
;		> ?
response

 
.

 
Headers

 
.

 
Add

  
(

  !
$str

! >
,

> ?
$str

? B
)

B C
;

C D
response 
. 
Headers 
. 
Add  
(  !
$str! ?
,? @
$str@ S
)S T
;T U
} 	
} 
} ﬂ

]C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Entities\Concrete\User.cs
	namespace 	
	ilkDeneme
 
. 
Entities 
. 
Concrete %
{ 
public		 

class		 
User		 
{

 
[ 	
Key	 
] 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
public 
int 
KullaniciId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
byte 
[ 
] 
PasswordHash "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
byte 
[ 
] 
PasswordSalt "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Role 
{ 
get  
;  !
set" %
;% &
}' (
} 
} π
aC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Entities\Concrete\Tasinmaz.cs
	namespace 	
	ilkDeneme
 
. 
Entities 
. 
Concrete %
{ 
public 

class 
Tasinmaz 
{ 
public 
int 

TasinmazId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Ada 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Parsel 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Nitelik 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
KoordinatBilgileri (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
KullaniciId 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

ForeignKey	 
( 
$str !
)! "
]" #
public 
virtual 
User 
User  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
	MahalleId 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	

ForeignKey	 
( 
$str 
)  
]  !
public   
virtual   
Mahalle   
Mahalle   &
{  ' (
get  ) ,
;  , -
set  . 1
;  1 2
}  3 4
}## 
}(( ¨
`C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Entities\Concrete\Mahalle.cs
	namespace 	
	ilkDeneme
 
. 
Entities 
. 
Concrete %
{ 
public 

class 
Mahalle 
{ 
public		 
int		 
	MahalleId		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
string

 

MahalleAdi

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 
int 
IlceId 
{ 
get 
;  
set! $
;$ %
}& '
[ 	

ForeignKey	 
( 
$str 
) 
] 
public 
virtual 
Ilce 
Ilce  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} É
\C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Entities\Concrete\Log.cs
	namespace 	
	ilkDeneme
 
. 
Entities 
. 
Concrete %
{ 
public 

class 
Log 
{ 
public 
int 
LogId 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
KullaniciId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
int		 
DurumId		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
int

 

IslemTipId

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
string 
Aciklama 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
DateTime 
	TarihSaat !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
KullaniciIp !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} Ö
aC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Entities\Concrete\IslemTip.cs
	namespace 	
	ilkDeneme
 
. 
Entities 
. 
Concrete %
{ 
public 

class 
IslemTip 
{ 
public 
int 

IslemTipId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
IslemAdi 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} Ö
]C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Entities\Concrete\Ilce.cs
	namespace 	
	ilkDeneme
 
. 
Entities 
. 
Concrete %
{ 
public 

class 
Ilce 
{ 
public		 
int		 
IlceId		 
{		 
get		 
;		  
set		! $
;		$ %
}		& '
public

 
string

 
IlceAdi

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
int 
IlId 
{ 
get 
; 
set "
;" #
}$ %
[ 	

ForeignKey	 
( 
$str 
) 
] 
public 
Il 
Il 
{ 
get 
; 
set 
;  
}! "
} 
} 
[C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Entities\Concrete\Il.cs
	namespace 	
	ilkDeneme
 
. 
Entities 
. 
Concrete %
{ 
public 

class 
Il 
{ 
public 
int 
IlId 
{ 
get 
; 
set "
;" #
}$ %
public 
string 
IlAdi 
{ 
get !
;! "
set# &
;& '
}( )
} 
}

 ¸
^C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Entities\Concrete\Durum.cs
	namespace 	
	ilkDeneme
 
. 
Entities 
. 
Concrete %
{ 
public 

class 
Durum 
{ 
public 
int 
DurumId 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
DurumAdi 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ·
^C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\DTOs\UserForRegisterDto.cs
	namespace 	
	ilkDeneme
 
. 
DTOs 
{ 
public 

class 
UserForRegisterDto #
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
}		 €
[C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\DTOs\UserForLoginDto.cs
	namespace 	
	ilkDeneme
 
. 
DTOs 
{ 
public 

class 
UserForLoginDto  
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} é
SC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\DTOs\UserDTO.cs
	namespace 	
	ilkDeneme
 
. 
DTOs 
{ 
public 

class 
UserDTO 
{ 
public 
int 
? 
KullaniciId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Password 
{ 
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Role 
{ 
get  
;  !
set" %
;% &
}' (
}		 
}

 

]C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\DTOs\TasinmazFilterDTO.cs
	namespace 	
	ilkDeneme
 
. 
DTOs 
{ 
public 

class 
TasinmazFilterDto "
{ 
public 
string 
IlAd 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
IlceAd 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
	MahalleAd 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Ada 
{ 
get 
;  
set! $
;$ %
}& '
public		 
string		 
Parsel		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
string

 
Nitelik

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
int 
? 
KullaniciId 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} Å
WC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\DTOs\TasinmazDTO.cs
	namespace 	
	ilkDeneme
 
. 
DTOs 
{ 
public 

class 
TasinmazDTO 
{ 
public 
int 

TasinmazId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Ada 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Parsel 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Nitelik 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
KoordinatBilgileri		 (
{		) *
get		+ .
;		. /
set		0 3
;		3 4
}		5 6
public

 
int

 
KullaniciId

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
int 
	MahalleId 
{ 
get "
;" #
set$ '
;' (
}) *
public 

MahalleDTO 
Mahalle !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
public 

class 

MahalleDTO 
{ 
public 
int 
	MahalleId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 

MahalleAdi  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
IlceId 
{ 
get 
;  
set! $
;$ %
}& '
public 
IlceDTO 
Ilce 
{ 
get !
;! "
set# &
;& '
}( )
} 
public 

class 
IlceDTO 
{ 
public 
int 
IlceId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
IlceAdi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
IlId 
{ 
get 
; 
set "
;" #
}$ %
public 
IlDTO 
Il 
{ 
get 
; 
set "
;" #
}$ %
} 
public 

class 
IlDTO 
{   
public!! 
int!! 
IlId!! 
{!! 
get!! 
;!! 
set!! "
;!!" #
}!!$ %
public"" 
string"" 
IlAdi"" 
{"" 
get"" !
;""! "
set""# &
;""& '
}""( )
}## 
}'' à
XC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\DTOs\LogFilterDTO.cs
public 
class 
LogFilterDTO 
{ 
public 

int 
? 
KullaniciId 
{ 
get !
;! "
set# &
;& '
}( )
public 

int 
? 
DurumId 
{ 
get 
; 
set "
;" #
}$ %
public		 

int		 
?		 

IslemTipId		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 

string

 
?

 
Aciklama

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 

DateTime 
? 
	TarihSaat 
{  
get! $
;$ %
set& )
;) *
}+ ,
} œ
]C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\DataAccess\DataContext.cs
public 
class  
ApplicationDbContext !
:" #
	DbContext$ -
{ 
public 
 
ApplicationDbContext 
(  
DbContextOptions  0
<0 1 
ApplicationDbContext1 E
>E F
optionsG N
)N O
:P Q
baseR V
(V W
optionsW ^
)^ _
{ 
}

 
public 

DbSet 
< 
Il 
> 
Iller 
{ 
get  
;  !
set" %
;% &
}' (
public 

DbSet 
< 
Ilce 
> 
Ilceler 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

DbSet 
< 
Mahalle 
> 

Mahalleler $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 

DbSet 
< 
Tasinmaz 
> 
Tasinmazlar &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 

DbSet 
< 
User 
> 
Users 
{ 
get "
;" #
set$ '
;' (
}) *
public 

DbSet 
< 
Log 
> 
Logs 
{ 
get  
;  !
set" %
;% &
}' (
public 

DbSet 
< 
Durum 
> 
Durumlar  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

DbSet 
< 
IslemTip 
> 
IslemTipleri '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
	protected 
override 
void 
OnModelCreating +
(+ ,
ModelBuilder, 8
modelBuilder9 E
)E F
{ 
modelBuilder 
. 
Entity 
< 
Durum !
>! "
(" #
)# $
.$ %
HasData% ,
(, -
new 
Durum 
{ 
DurumId 
=  !
$num" #
,# $
DurumAdi% -
=. /
$str0 :
}; <
,< =
new 
Durum 
{ 
DurumId 
=  !
$num" #
,# $
DurumAdi% -
=. /
$str0 ;
}< =
) 	
;	 

modelBuilder 
. 
Entity 
< 
IslemTip $
>$ %
(% &
)& '
.' (
HasData( /
(/ 0
new   
IslemTip   
{   

IslemTipId   %
=  & '
$num  ( )
,  ) *
IslemAdi  + 3
=  4 5
$str  6 B
}  C D
,  D E
new!! 
IslemTip!! 
{!! 

IslemTipId!! %
=!!& '
$num!!( )
,!!) *
IslemAdi!!+ 3
=!!4 5
$str!!6 B
}!!C D
,!!D E
new"" 
IslemTip"" 
{"" 

IslemTipId"" %
=""& '
$num""( )
,"") *
IslemAdi""+ 3
=""4 5
$str""6 =
}""> ?
,""? @
new## 
IslemTip## 
{## 

IslemTipId## %
=##& '
$num##( )
,##) *
IslemAdi##+ 3
=##4 5
$str##6 =
}##> ?
)$$ 	
;$$	 

}%% 
}&& É
lC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Controllers\WeatherForecastController.cs
	namespace 	
	ilkDeneme
 
. 
Controllers 
{		 
[

 
ApiController

 
]

 
[ 
Route 

(
 
$str 
) 
] 
public 

class %
WeatherForecastController *
:+ ,
ControllerBase- ;
{ 
private 
static 
readonly 
string  &
[& '
]' (
	Summaries) 2
=3 4
new5 8
[8 9
]9 :
{ 	
$str 
, 
$str !
,! "
$str# +
,+ ,
$str- 3
,3 4
$str5 ;
,; <
$str= C
,C D
$strE L
,L M
$strN S
,S T
$strU a
,a b
$strc n
} 	
;	 

private 
readonly 
ILogger  
<  !%
WeatherForecastController! :
>: ;
_logger< C
;C D
public %
WeatherForecastController (
(( )
ILogger) 0
<0 1%
WeatherForecastController1 J
>J K
loggerL R
)R S
{ 	
_logger 
= 
logger 
; 
} 	
[ 	
HttpGet	 
] 
public 
IEnumerable 
< 
WeatherForecast *
>* +
Get, /
(/ 0
)0 1
{ 	
var 
rng 
= 
new 
Random  
(  !
)! "
;" #
return 

Enumerable 
. 
Range #
(# $
$num$ %
,% &
$num' (
)( )
.) *
Select* 0
(0 1
index1 6
=>7 9
new: =
WeatherForecast> M
{ 
Date   
=   
DateTime   
.    
Now    #
.  # $
AddDays  $ +
(  + ,
index  , 1
)  1 2
,  2 3
TemperatureC!! 
=!! 
rng!! "
.!!" #
Next!!# '
(!!' (
-!!( )
$num!!) +
,!!+ ,
$num!!- /
)!!/ 0
,!!0 1
Summary"" 
="" 
	Summaries"" #
[""# $
rng""$ '
.""' (
Next""( ,
("", -
	Summaries""- 6
.""6 7
Length""7 =
)""= >
]""> ?
}## 
)## 
.$$ 
ToArray$$ 
($$ 
)$$ 
;$$ 
}%% 	
}&& 
}'' ÌE
aC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Controllers\UserController.cs
[

 
Route

 
(

 
$str

 
)

 
]

 
[ 
ApiController 
] 
public 
class 
UserController 
: 
ControllerBase ,
{ 
private 
readonly 
IUserService !
_userService" .
;. /
public 

UserController 
( 
IUserService &
userService' 2
)2 3
{ 
_userService 
= 
userService "
;" #
} 
[ 
HttpGet 
( 
$str 
) 
] 
[ 
	Authorize 
( 
Roles 
= 
$str 
) 
]  
public 

async 
Task 
< 
ActionResult "
<" #
IEnumerable# .
<. /
UserDTO/ 6
>6 7
>7 8
>8 9
GetAllUsers: E
(E F
)F G
{ 
try 
{ 	
var 
users 
= 
await 
_userService *
.* +
GetAllUsersAsync+ ;
(; <
)< =
;= >
var 
userDTOs 
= 
users  
.  !
Select! '
(' (
u( )
=>* ,
new- 0
UserDTO1 8
{ 
KullaniciId 
= 
u 
.  
KullaniciId  +
,+ ,
Email 
= 
u 
. 
Email 
,  
Role   
=   
u   
.   
Role   
}!! 
)!! 
.!! 
ToList!! 
(!! 
)!! 
;!! 
return"" 
Ok"" 
("" 
userDTOs"" 
)"" 
;""  
}## 	
catch$$ 
($$ 
	Exception$$ 
ex$$ 
)$$ 
{%% 	
return&& 

StatusCode&& 
(&& 
$num&& !
,&&! "
$"&&# %
$str&&% <
{&&< =
ex&&= ?
.&&? @
Message&&@ G
}&&G H
"&&H I
)&&I J
;&&J K
}'' 	
}(( 
[** 

HttpDelete** 
(** 
$str** !
)**! "
]**" #
[++ 
	Authorize++ 
(++ 
Roles++ 
=++ 
$str++ 
)++ 
]++  
public,, 

async,, 
Task,, 
<,, 
IActionResult,, #
>,,# $

DeleteUser,,% /
(,,/ 0
int,,0 3
id,,4 6
),,6 7
{-- 
try.. 
{// 	
await00 
_userService00 
.00 
DeleteUserAsync00 .
(00. /
id00/ 1
)001 2
;002 3
return11 
	NoContent11 
(11 
)11 
;11 
}22 	
catch33 
(33 
	Exception33 
ex33 
)33 
{44 	
return55 

StatusCode55 
(55 
$num55 !
,55! "
$"55# %
$str55% <
{55< =
ex55= ?
.55? @
Message55@ G
}55G H
"55H I
)55I J
;55J K
}66 	
}77 
[:: 
HttpPost:: 
(:: 
$str:: 
):: 
]:: 
[;; 
	Authorize;; 
(;; 
Roles;; 
=;; 
$str;; 
);; 
];;  
public<< 

async<< 
Task<< 
<<< 
IActionResult<< #
><<# $
AddUser<<% ,
(<<, -
[<<- .
FromBody<<. 6
]<<6 7
UserDTO<<8 ?
userDto<<@ G
)<<G H
{== 
if>> 

(>> 
!>> 

ModelState>> 
.>> 
IsValid>> 
)>>  
return?? 

BadRequest?? 
(?? 

ModelState?? (
)??( )
;??) *
tryAA 
{BB 	
awaitCC 
_userServiceCC 
.CC 
AddUserAsyncCC +
(CC+ ,
userDtoCC, 3
)CC3 4
;CC4 5
returnDD 
OkDD 
(DD 
)DD 
;DD 
}EE 	
catchFF 
(FF %
InvalidOperationExceptionFF (
exFF) +
)FF+ ,
{GG 	
returnHH 
ConflictHH 
(HH 
exHH 
.HH 
MessageHH &
)HH& '
;HH' (
}II 	
catchJJ 
(JJ 
	ExceptionJJ 
exJJ 
)JJ 
{KK 	
returnLL 

StatusCodeLL 
(LL 
$numLL !
,LL! "
$"LL# %
$strLL% <
{LL< =
exLL= ?
.LL? @
MessageLL@ G
}LLG H
"LLH I
)LLI J
;LLJ K
}MM 	
}NN 
[QQ 
HttpPutQQ 
(QQ 
$strQQ 
)QQ 
]QQ 
[RR 
	AuthorizeRR 
(RR 
RolesRR 
=RR 
$strRR 
)RR 
]RR  
publicSS 

asyncSS 
TaskSS 
<SS 
IActionResultSS #
>SS# $

UpdateUserSS% /
(SS/ 0
[SS0 1
FromBodySS1 9
]SS9 :
UserDTOSS; B
userDtoSSC J
)SSJ K
{TT 
ifUU 

(UU 
!UU 

ModelStateUU 
.UU 
IsValidUU 
)UU  
returnVV 

BadRequestVV 
(VV 

ModelStateVV (
)VV( )
;VV) *
tryXX 
{YY 	
ifZZ 
(ZZ 
!ZZ 
userDtoZZ 
.ZZ 
KullaniciIdZZ $
.ZZ$ %
HasValueZZ% -
)ZZ- .
return[[ 

BadRequest[[ !
([[! "
$str[[" ;
)[[; <
;[[< =
await]] 
_userService]] 
.]] 
UpdateUserAsync]] .
(]]. /
userDto]]/ 6
)]]6 7
;]]7 8
return^^ 
Ok^^ 
(^^ 
new^^ 
{^^ 
message^^ #
=^^$ %
$str^^& H
}^^I J
)^^J K
;^^K L
}__ 	
catch`` 
(`` 
ArgumentException``  
ex``! #
)``# $
{aa 	
returnbb 
NotFoundbb 
(bb 
newbb 
{bb  !
messagebb" )
=bb* +
exbb, .
.bb. /
Messagebb/ 6
}bb7 8
)bb8 9
;bb9 :
}cc 	
catchdd 
(dd %
InvalidOperationExceptiondd (
exdd) +
)dd+ ,
{ee 	
returnff 
Conflictff 
(ff 
newff 
{ff  !
messageff" )
=ff* +
exff, .
.ff. /
Messageff/ 6
}ff7 8
)ff8 9
;ff9 :
}gg 	
catchhh 
(hh 
	Exceptionhh 
exhh 
)hh 
{ii 	
returnjj 

StatusCodejj 
(jj 
$numjj !
,jj! "
newjj# &
{jj' (
messagejj) 0
=jj1 2
$"jj3 5
$strjj5 L
{jjL M
exjjM O
.jjO P
MessagejjP W
}jjW X
"jjX Y
}jjZ [
)jj[ \
;jj\ ]
}kk 	
}ll 
[mm 
HttpGetmm 
(mm 
$strmm "
)mm" #
]mm# $
publicnn 

asyncnn 
Tasknn 
<nn 
IActionResultnn #
>nn# $
GetUserEmailnn% 1
(nn1 2
intnn2 5
kullaniciIdnn6 A
)nnA B
{oo 
varpp 
emailpp 
=pp 
awaitpp 
_userServicepp &
.pp& '*
GetUserEmailByKullaniciIdAsyncpp' E
(ppE F
kullaniciIdppF Q
)ppQ R
;ppR S
ifrr 

(rr 
emailrr 
==rr 
nullrr 
)rr 
{ss 	
returntt 
NotFoundtt 
(tt 
$strtt 3
)tt3 4
;tt4 5
}uu 	
returnww 
Okww 
(ww 
newww 
{ww 
Emailww 
=ww 
emailww  %
}ww& '
)ww' (
;ww( )
}xx 
}ÅÅ øÇ
eC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Controllers\TasinmazController.cs
	namespace 
	ilkDeneme 
. 
Controllers #
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 	
ApiController	 
] 
public 
class 
TasinmazController '
:( )
ControllerBase* 8
{ 	
private 
readonly 
ITasinmazInterface /
_tasinmazService0 @
;@ A
private 
readonly 
ILoggingService (
_loggingService) 8
;8 9
public 
TasinmazController !
(! "
ITasinmazInterface" 4
tasinmazService5 D
,D E
ILoggingServiceF U
loggingServiceV d
)d e
{ 
_tasinmazService  
=! "
tasinmazService# 2
;2 3
_loggingService 
= 
loggingService ,
;, -
} 	
[!! 
HttpGet!! 
]!! 
public"" 
async"" 
Task"" 
<"" 
ActionResult"" *
<""* +
List""+ /
<""/ 0
Tasinmaz""0 8
>""8 9
>""9 :
>"": ;
GetTasinmazlar""< J
(""J K
)""K L
{## 
var$$ 
tasinmazlar$$ 
=$$  !
await$$" '
_tasinmazService$$( 8
.$$8 9"
GetAllTasinmazlarAsync$$9 O
($$O P
)$$P Q
;$$Q R
return%% 
Ok%% 
(%% 
tasinmazlar%% %
)%%% &
;%%& '
}&& 
[)) 
HttpGet)) 
()) 
$str)) 
))) 
])) 
public** 
async** 
Task** 
<** 
ActionResult** *
<*** +
Tasinmaz**+ 3
>**3 4
>**4 5
GetTasinmaz**6 A
(**A B
int**B E
id**F H
)**H I
{++ 
var,, 
tasinmaz,, 
=,, 
await,, $
_tasinmazService,,% 5
.,,5 6 
GetTasinmazByIdAsync,,6 J
(,,J K
id,,K M
),,M N
;,,N O
if-- 
(-- 
tasinmaz-- 
==-- 
null--  $
)--$ %
{.. 
return// 
NotFound// #
(//# $
)//$ %
;//% &
}00 
return11 
Ok11 
(11 
tasinmaz11 "
)11" #
;11# $
}22 
[44 	
HttpGet44	 
(44 
$str44 #
)44# $
]44$ %
[55 	
	Authorize55	 
(55 
Roles55 
=55 
$str55 (
)55( )
]55) *
public66 
async66 
Task66 
<66 
IActionResult66 '
>66' (
GetByKullaniciId66) 9
(669 :
int66: =
id66> @
,66@ A
string66B H
ilAd66I M
=66N O
null66P T
,66T U
string66V \
ilceAd66] c
=66d e
null66f j
,66j k
string66l r
	mahalleAd66s |
=66} ~
null	66 É
,
66É Ñ
string
66Ö ã
ada
66å è
=
66ê ë
null
66í ñ
,
66ñ ó
string
66ò û
parsel
66ü •
=
66¶ ß
null
66® ¨
,
66¨ ≠
string
66Æ ¥
nitelik
66µ º
=
66Ω æ
null
66ø √
)
66√ ƒ
{77 	
var99 
userId99 
=99 
int99 
.99 
Parse99 "
(99" #
User99# '
.99' (
	FindFirst99( 1
(991 2

ClaimTypes992 <
.99< =
NameIdentifier99= K
)99K L
?99L M
.99M N
Value99N S
)99S T
;99T U
var:: 
userRole:: 
=:: 
User:: 
.::  
	FindFirst::  )
(::) *

ClaimTypes::* 4
.::4 5
Role::5 9
)::9 :
?::: ;
.::; <
Value::< A
;::A B
if== 
(== 
userRole== 
==== 
$str== #
||==$ &
id==' )
====* ,
userId==- 3
)==3 4
{>> 
var?? 
tasinmazlar?? 
=??  !
await??" '
_tasinmazService??( 8
.??8 9!
GetByKullaniciIdAsync??9 N
(??N O
id??O Q
,??Q R
ilAd??S W
,??W X
ilceAd??Y _
,??_ `
	mahalleAd??a j
,??j k
ada??l o
,??o p
parsel??q w
,??w x
nitelik	??y Ä
)
??Ä Å
;
??Å Ç
return@@ 
Ok@@ 
(@@ 
tasinmazlar@@ %
)@@% &
;@@& '
}AA 
elseBB 
{CC 
returnDD 
ForbidDD 
(DD 
)DD 
;DD  
}EE 
}FF 	
[TT 	
HttpPostTT	 
]TT 
[UU 	
	AuthorizeUU	 
(UU 
RolesUU 
=UU 
$strUU (
)UU( )
]UU) *
publicVV 
asyncVV 
TaskVV 
<VV 
ActionResultVV &
<VV& '
TasinmazVV' /
>VV/ 0
>VV0 1
PostTasinmazVV2 >
(VV> ?
TasinmazVV? G
tasinmazVVH P
)VVP Q
{WW 	
varXX 
kullaniciIdXX 
=XX 
intXX !
.XX! "
ParseXX" '
(XX' (
UserXX( ,
.XX, -
	FindFirstXX- 6
(XX6 7

ClaimTypesXX7 A
.XXA B
NameIdentifierXXB P
)XXP Q
?XXQ R
.XXR S
ValueXXS X
??XXY [
$strXX\ _
)XX_ `
;XX` a
varYY 
	ipAddressYY 
=YY 
HttpContextYY '
.YY' (

ConnectionYY( 2
.YY2 3
RemoteIpAddressYY3 B
?YYB C
.YYC D
ToStringYYD L
(YYL M
)YYM N
;YYN O
try[[ 
{\\ 
var^^ 
newTasinmaz^^ 
=^^  !
await^^" '
_tasinmazService^^( 8
.^^8 9
AddTasinmazAsync^^9 I
(^^I J
tasinmaz^^J R
,^^R S
kullaniciId^^T _
,^^_ `
	ipAddress^^a j
)^^j k
;^^k l
return__ 
CreatedAtAction__ &
(__& '
nameof__' -
(__- .
GetTasinmaz__. 9
)__9 :
,__: ;
new__< ?
{__@ A
id__B D
=__E F
newTasinmaz__G R
.__R S

TasinmazId__S ]
}__^ _
,___ `
newTasinmaz__a l
)__l m
;__m n
}`` 
catchaa 
(aa !
ArgumentNullExceptionaa (
exaa) +
)aa+ ,
{bb 
awaitdd 
_loggingServicedd %
.dd% &
	LogActiondd& /
(dd/ 0
kullaniciIddd0 ;
,dd; <
$numdd= >
,dd> ?
$numdd@ A
,ddA B
$"ddC E
$strddE S
{ddS T
exddT V
.ddV W
MessageddW ^
}dd^ _
"dd_ `
,dd` a
	ipAddressddb k
)ddk l
;ddl m
returnee 

BadRequestee !
(ee! "
$"ee" $
$stree$ 2
{ee2 3
exee3 5
.ee5 6
Messageee6 =
}ee= >
"ee> ?
)ee? @
;ee@ A
}ff 
catchgg 
(gg 
ArgumentExceptiongg $
exgg% '
)gg' (
{hh 
awaitjj 
_loggingServicejj %
.jj% &
	LogActionjj& /
(jj/ 0
kullaniciIdjj0 ;
,jj; <
$numjj= >
,jj> ?
$numjj@ A
,jjA B
$"jjC E
$strjjE \
{jj\ ]
exjj] _
.jj_ `
Messagejj` g
}jjg h
"jjh i
,jji j
	ipAddressjjk t
)jjt u
;jju v
returnkk 

BadRequestkk !
(kk! "
$"kk" $
$strkk$ ;
{kk; <
exkk< >
.kk> ?
Messagekk? F
}kkF G
"kkG H
)kkH I
;kkI J
}ll 
catchmm 
(mm 
	Exceptionmm 
exmm 
)mm  
{nn 
awaitpp 
_loggingServicepp %
.pp% &
	LogActionpp& /
(pp/ 0
kullaniciIdpp0 ;
,pp; <
$numpp= >
,pp> ?
$numpp@ A
,ppA B
$"ppC E
$strppE \
{pp\ ]
expp] _
.pp_ `
Messagepp` g
}ppg h
"pph i
,ppi j
	ipAddressppk t
)ppt u
;ppu v
returnqq 

StatusCodeqq !
(qq! "
StatusCodesqq" -
.qq- .(
Status500InternalServerErrorqq. J
,qqJ K
$"qqL N
$strqqN e
{qqe f
exqqf h
.qqh i
Messageqqi p
}qqp q
"qqq r
)qqr s
;qqs t
}rr 
}ss 	
[zz 	
HttpPutzz	 
(zz 
$strzz 
)zz 
]zz 
[{{ 	
	Authorize{{	 
({{ 
Roles{{ 
={{ 
$str{{ (
){{( )
]{{) *
public|| 
async|| 
Task|| 
<|| 
IActionResult|| '
>||' (
PutTasinmaz||) 4
(||4 5
int||5 8
id||9 ;
,||; <
Tasinmaz||= E
tasinmaz||F N
)||N O
{}} 	
if~~ 
(~~ 
id~~ 
!=~~ 
tasinmaz~~ 
.~~ 

TasinmazId~~ )
)~~) *
{ 
return
ÄÄ 

BadRequest
ÄÄ !
(
ÄÄ! "
$str
ÄÄ" 9
)
ÄÄ9 :
;
ÄÄ: ;
}
ÅÅ 
var
ÉÉ 
kullaniciId
ÉÉ 
=
ÉÉ 
int
ÉÉ !
.
ÉÉ! "
Parse
ÉÉ" '
(
ÉÉ' (
User
ÉÉ( ,
.
ÉÉ, -
	FindFirst
ÉÉ- 6
(
ÉÉ6 7

ClaimTypes
ÉÉ7 A
.
ÉÉA B
NameIdentifier
ÉÉB P
)
ÉÉP Q
?
ÉÉQ R
.
ÉÉR S
Value
ÉÉS X
??
ÉÉY [
$str
ÉÉ\ _
)
ÉÉ_ `
;
ÉÉ` a
var
ÑÑ 
	ipAddress
ÑÑ 
=
ÑÑ 
HttpContext
ÑÑ '
.
ÑÑ' (

Connection
ÑÑ( 2
.
ÑÑ2 3
RemoteIpAddress
ÑÑ3 B
?
ÑÑB C
.
ÑÑC D
ToString
ÑÑD L
(
ÑÑL M
)
ÑÑM N
;
ÑÑN O
var
ÖÖ 
userRole
ÖÖ 
=
ÖÖ 
User
ÖÖ 
.
ÖÖ  
	FindFirst
ÖÖ  )
(
ÖÖ) *

ClaimTypes
ÖÖ* 4
.
ÖÖ4 5
Role
ÖÖ5 9
)
ÖÖ9 :
?
ÖÖ: ;
.
ÖÖ; <
Value
ÖÖ< A
;
ÖÖA B
try
áá 
{
àà 
if
ââ 
(
ââ 
userRole
ââ 
==
ââ 
$str
ââ  &
)
ââ& '
{
ää 
var
ãã 
existingTasinmaz
ãã (
=
ãã) *
await
ãã+ 0
_tasinmazService
ãã1 A
.
ããA B"
GetTasinmazByIdAsync
ããB V
(
ããV W
id
ããW Y
)
ããY Z
;
ããZ [
if
åå 
(
åå 
existingTasinmaz
åå (
==
åå) +
null
åå, 0
||
åå1 3
existingTasinmaz
åå4 D
.
ååD E
KullaniciId
ååE P
!=
ååQ S
kullaniciId
ååT _
)
åå_ `
{
çç 
return
éé 
Unauthorized
éé +
(
éé+ ,
$str
éé, ]
)
éé] ^
;
éé^ _
}
èè 
}
êê 
var
íí 
updatedTasinmaz
íí #
=
íí$ %
await
íí& +
_tasinmazService
íí, <
.
íí< =!
UpdateTasinmazAsync
íí= P
(
ííP Q
tasinmaz
ííQ Y
,
ííY Z
kullaniciId
íí[ f
,
ííf g
	ipAddress
ííh q
)
ííq r
;
íír s
await
ïï 
_loggingService
ïï %
.
ïï% &
	LogAction
ïï& /
(
ïï/ 0
kullaniciId
ïï0 ;
,
ïï; <
$num
ïï= >
,
ïï> ?
$num
ïï@ A
,
ïïA B
$"
ïïC E
$str
ïïE ^
{
ïï^ _
id
ïï_ a
}
ïïa b
"
ïïb c
,
ïïc d
	ipAddress
ïïe n
)
ïïn o
;
ïïo p
return
óó 
	NoContent
óó  
(
óó  !
)
óó! "
;
óó" #
}
òò 
catch
ôô 
(
ôô 
	Exception
ôô 
ex
ôô 
)
ôô  
{
öö 
await
úú 
_loggingService
úú %
.
úú% &
	LogAction
úú& /
(
úú/ 0
kullaniciId
úú0 ;
,
úú; <
$num
úú= >
,
úú> ?
$num
úú@ A
,
úúA B
$"
úúC E
$str
úúE g
{
úúg h
id
úúh j
}
úúj k
$str
úúk u
{
úúu v
ex
úúv x
.
úúx y
Messageúúy Ä
}úúÄ Å
"úúÅ Ç
,úúÇ É
	ipAddressúúÑ ç
)úúç é
;úúé è
return
ùù 

StatusCode
ùù !
(
ùù! "
StatusCodes
ùù" -
.
ùù- .*
Status500InternalServerError
ùù. J
,
ùùJ K
$"
ùùL N
$str
ùùN e
{
ùùe f
ex
ùùf h
.
ùùh i
Message
ùùi p
}
ùùp q
"
ùùq r
)
ùùr s
;
ùùs t
}
ûû 
}
üü 	
[
ßß 	

HttpDelete
ßß	 
(
ßß 
$str
ßß 
)
ßß 
]
ßß 
[
®® 	
	Authorize
®®	 
(
®® 
Roles
®® 
=
®® 
$str
®® (
)
®®( )
]
®®) *
public
©© 
async
©© 
Task
©© 
<
©© 
IActionResult
©© '
>
©©' (
DeleteTasinmaz
©©) 7
(
©©7 8
int
©©8 ;
id
©©< >
)
©©> ?
{
™™ 	
var
´´ 
kullaniciId
´´ 
=
´´ 
int
´´ !
.
´´! "
Parse
´´" '
(
´´' (
User
´´( ,
.
´´, -
	FindFirst
´´- 6
(
´´6 7

ClaimTypes
´´7 A
.
´´A B
NameIdentifier
´´B P
)
´´P Q
?
´´Q R
.
´´R S
Value
´´S X
??
´´Y [
$str
´´\ _
)
´´_ `
;
´´` a
var
¨¨ 
	ipAddress
¨¨ 
=
¨¨ 
HttpContext
¨¨ '
.
¨¨' (

Connection
¨¨( 2
.
¨¨2 3
RemoteIpAddress
¨¨3 B
?
¨¨B C
.
¨¨C D
ToString
¨¨D L
(
¨¨L M
)
¨¨M N
;
¨¨N O
var
≠≠ 
userRole
≠≠ 
=
≠≠ 
User
≠≠ 
.
≠≠  
	FindFirst
≠≠  )
(
≠≠) *

ClaimTypes
≠≠* 4
.
≠≠4 5
Role
≠≠5 9
)
≠≠9 :
?
≠≠: ;
.
≠≠; <
Value
≠≠< A
;
≠≠A B
if
∞∞ 
(
∞∞ 
userRole
∞∞ 
==
∞∞ 
$str
∞∞ "
)
∞∞" #
{
±± 
var
≤≤ 
tasinmaz
≤≤ 
=
≤≤ 
await
≤≤ $
_tasinmazService
≤≤% 5
.
≤≤5 6"
GetTasinmazByIdAsync
≤≤6 J
(
≤≤J K
id
≤≤K M
)
≤≤M N
;
≤≤N O
if
≥≥ 
(
≥≥ 
tasinmaz
≥≥ 
==
≥≥ 
null
≥≥  $
||
≥≥% '
tasinmaz
≥≥( 0
.
≥≥0 1
KullaniciId
≥≥1 <
!=
≥≥= ?
kullaniciId
≥≥@ K
)
≥≥K L
{
¥¥ 
return
µµ 
Unauthorized
µµ '
(
µµ' (
$str
µµ( Y
)
µµY Z
;
µµZ [
}
∂∂ 
}
∑∑ 
await
ππ 
_tasinmazService
ππ "
.
ππ" #!
DeleteTasinmazAsync
ππ# 6
(
ππ6 7
id
ππ7 9
,
ππ9 :
kullaniciId
ππ; F
,
ππF G
	ipAddress
ππH Q
)
ππQ R
;
ππR S
return
∫∫ 
	NoContent
∫∫ 
(
∫∫ 
)
∫∫ 
;
∫∫ 
}
ªª 	
[
øø 	

HttpDelete
øø	 
(
øø 
$str
øø !
)
øø! "
]
øø" #
[
¿¿ 	
	Authorize
¿¿	 
(
¿¿ 
Roles
¿¿ 
=
¿¿ 
$str
¿¿ (
)
¿¿( )
]
¿¿) *
public
¡¡ 
async
¡¡ 
Task
¡¡ 
<
¡¡ 
IActionResult
¡¡ '
>
¡¡' (
DeleteTasinmazlar
¡¡) :
(
¡¡: ;
[
¡¡; <
FromBody
¡¡< D
]
¡¡D E
List
¡¡F J
<
¡¡J K
int
¡¡K N
>
¡¡N O
ids
¡¡P S
)
¡¡S T
{
¬¬ 	
if
√√ 
(
√√ 
ids
√√ 
==
√√ 
null
√√ 
||
√√ 
!
√√  
ids
√√  #
.
√√# $
Any
√√$ '
(
√√' (
)
√√( )
)
√√) *
{
ƒƒ 
return
≈≈ 

BadRequest
≈≈ !
(
≈≈! "
$str
≈≈" 3
)
≈≈3 4
;
≈≈4 5
}
∆∆ 
var
»» 
kullaniciId
»» 
=
»» 
int
»» !
.
»»! "
Parse
»»" '
(
»»' (
User
»»( ,
.
»», -
	FindFirst
»»- 6
(
»»6 7

ClaimTypes
»»7 A
.
»»A B
NameIdentifier
»»B P
)
»»P Q
?
»»Q R
.
»»R S
Value
»»S X
??
»»Y [
$str
»»\ _
)
»»_ `
;
»»` a
var
…… 
	ipAddress
…… 
=
…… 
HttpContext
…… '
.
……' (

Connection
……( 2
.
……2 3
RemoteIpAddress
……3 B
?
……B C
.
……C D
ToString
……D L
(
……L M
)
……M N
;
……N O
var
   
userRole
   
=
   
User
   
.
    
	FindFirst
    )
(
  ) *

ClaimTypes
  * 4
.
  4 5
Role
  5 9
)
  9 :
?
  : ;
.
  ; <
Value
  < A
;
  A B
if
ÕÕ 
(
ÕÕ 
userRole
ÕÕ 
==
ÕÕ 
$str
ÕÕ "
)
ÕÕ" #
{
ŒŒ 
var
œœ 
tasinmazlar
œœ 
=
œœ  !
await
œœ" '
_tasinmazService
œœ( 8
.
œœ8 9#
GetByKullaniciIdAsync
œœ9 N
(
œœN O
kullaniciId
œœO Z
)
œœZ [
;
œœ[ \
if
–– 
(
–– 
!
–– 
tasinmazlar
––  
.
––  !
All
––! $
(
––$ %
t
––% &
=>
––' )
ids
––* -
.
––- .
Contains
––. 6
(
––6 7
t
––7 8
.
––8 9

TasinmazId
––9 C
)
––C D
)
––D E
)
––E F
{
—— 
return
““ 
Unauthorized
““ '
(
““' (
$str
““( d
)
““d e
;
““e f
}
”” 
}
‘‘ 
await
÷÷ 
_tasinmazService
÷÷ "
.
÷÷" #$
DeleteTasinmazlarAsync
÷÷# 9
(
÷÷9 :
ids
÷÷: =
,
÷÷= >
kullaniciId
÷÷? J
,
÷÷J K
	ipAddress
÷÷L U
)
÷÷U V
;
÷÷V W
return
◊◊ 
	NoContent
◊◊ 
(
◊◊ 
)
◊◊ 
;
◊◊ 
}
ÿÿ 	
[
€€ 	
HttpGet
€€	 
(
€€ 
$str
€€ #
)
€€# $
]
€€$ %
[
‹‹ 	
	Authorize
‹‹	 
]
‹‹ 
public
›› 
async
›› 
Task
›› 
<
›› 
ActionResult
›› &
<
››& '
IEnumerable
››' 2
<
››2 3
TasinmazDTO
››3 >
>
››> ?
>
››? @
>
››@ A
GetAllProperties
››B R
(
››R S
[
ﬁﬁ 
	FromQuery
ﬁﬁ 
]
ﬁﬁ 
string
ﬁﬁ 
ilAd
ﬁﬁ 
=
ﬁﬁ 
null
ﬁﬁ "
,
ﬁﬁ" #
[
ﬂﬂ 
	FromQuery
ﬂﬂ 
]
ﬂﬂ 
string
ﬂﬂ 
ilceAd
ﬂﬂ 
=
ﬂﬂ 
null
ﬂﬂ  $
,
ﬂﬂ$ %
[
‡‡ 
	FromQuery
‡‡ 
]
‡‡ 
string
‡‡ 
	mahalleAd
‡‡  
=
‡‡! "
null
‡‡# '
,
‡‡' (
[
·· 
	FromQuery
·· 
]
·· 
string
·· 
ada
·· 
=
·· 
null
·· !
,
··! "
[
‚‚ 
	FromQuery
‚‚ 
]
‚‚ 
string
‚‚ 
parsel
‚‚ 
=
‚‚ 
null
‚‚  $
,
‚‚$ %
[
„„ 
	FromQuery
„„ 
]
„„ 
string
„„ 
nitelik
„„ 
=
„„  
null
„„! %
,
„„% &
[
‰‰ 
	FromQuery
‰‰ 
]
‰‰ 
int
‰‰ 
?
‰‰ 
kullaniciId
‰‰  
=
‰‰! "
null
‰‰# '
)
‰‰' (
{
ÂÂ 	
var
ÁÁ 
userIdClaim
ÁÁ 
=
ÁÁ 
User
ÁÁ "
.
ÁÁ" #
	FindFirst
ÁÁ# ,
(
ÁÁ, -

ClaimTypes
ÁÁ- 7
.
ÁÁ7 8
NameIdentifier
ÁÁ8 F
)
ÁÁF G
?
ÁÁG H
.
ÁÁH I
Value
ÁÁI N
;
ÁÁN O
var
ËË 
userRole
ËË 
=
ËË 
User
ËË 
.
ËË  
	FindFirst
ËË  )
(
ËË) *

ClaimTypes
ËË* 4
.
ËË4 5
Role
ËË5 9
)
ËË9 :
?
ËË: ;
.
ËË; <
Value
ËË< A
;
ËËA B
if
ÎÎ 
(
ÎÎ 
string
ÎÎ 
.
ÎÎ 
IsNullOrEmpty
ÎÎ $
(
ÎÎ$ %
userIdClaim
ÎÎ% 0
)
ÎÎ0 1
||
ÎÎ2 4
string
ÎÎ5 ;
.
ÎÎ; <
IsNullOrEmpty
ÎÎ< I
(
ÎÎI J
userRole
ÎÎJ R
)
ÎÎR S
)
ÎÎS T
{
ÏÏ 
return
ÌÌ 
Unauthorized
ÌÌ #
(
ÌÌ# $
$str
ÌÌ$ M
)
ÌÌM N
;
ÌÌN O
}
ÓÓ 
if
ÒÒ 
(
ÒÒ 
!
ÒÒ 
int
ÒÒ 
.
ÒÒ 
TryParse
ÒÒ 
(
ÒÒ 
userIdClaim
ÒÒ )
,
ÒÒ) *
out
ÒÒ+ .
int
ÒÒ/ 2
userId
ÒÒ3 9
)
ÒÒ9 :
)
ÒÒ: ;
{
ÚÚ 
return
ÛÛ 

BadRequest
ÛÛ !
(
ÛÛ! "
$str
ÛÛ" ;
)
ÛÛ; <
;
ÛÛ< =
}
ÙÙ 
try
ˆˆ 
{
˜˜ 
IEnumerable
¯¯ 
<
¯¯ 
Tasinmaz
¯¯ $
>
¯¯$ %
tasinmazlar
¯¯& 1
;
¯¯1 2
if
˚˚ 
(
˚˚ 
userRole
˚˚ 
==
˚˚ 
$str
˚˚  '
)
˚˚' (
{
¸¸ 
tasinmazlar
˝˝ 
=
˝˝  !
await
˝˝" '
_tasinmazService
˝˝( 8
.
˝˝8 9$
GetAllTasinmazlarAsync
˝˝9 O
(
˝˝O P
)
˝˝P Q
;
˝˝Q R
}
˛˛ 
else
ˇˇ 
{
ÄÄ 
tasinmazlar
ÅÅ 
=
ÅÅ  !
await
ÅÅ" '
_tasinmazService
ÅÅ( 8
.
ÅÅ8 9#
GetByKullaniciIdAsync
ÅÅ9 N
(
ÅÅN O
userId
ÅÅO U
)
ÅÅU V
;
ÅÅV W
}
ÇÇ 
if
ÖÖ 
(
ÖÖ 
!
ÖÖ 
string
ÖÖ 
.
ÖÖ 
IsNullOrEmpty
ÖÖ )
(
ÖÖ) *
ilAd
ÖÖ* .
)
ÖÖ. /
)
ÖÖ/ 0
{
ÜÜ 
tasinmazlar
áá 
=
áá  !
tasinmazlar
áá" -
.
áá- .
Where
áá. 3
(
áá3 4
t
áá4 5
=>
áá6 8
t
áá9 :
.
áá: ;
Mahalle
áá; B
?
ááB C
.
ááC D
Ilce
ááD H
?
ááH I
.
ááI J
Il
ááJ L
?
ááL M
.
ááM N
IlAdi
ááN S
.
ááS T
Contains
ááT \
(
áá\ ]
ilAd
áá] a
,
ááa b
StringComparison
áác s
.
áás t 
OrdinalIgnoreCaseáát Ö
)ááÖ Ü
==ááá â
trueááä é
)ááé è
;ááè ê
}
àà 
if
ää 
(
ää 
!
ää 
string
ää 
.
ää 
IsNullOrEmpty
ää )
(
ää) *
ilceAd
ää* 0
)
ää0 1
)
ää1 2
{
ãã 
tasinmazlar
åå 
=
åå  !
tasinmazlar
åå" -
.
åå- .
Where
åå. 3
(
åå3 4
t
åå4 5
=>
åå6 8
t
åå9 :
.
åå: ;
Mahalle
åå; B
?
ååB C
.
ååC D
Ilce
ååD H
?
ååH I
.
ååI J
IlceAdi
ååJ Q
.
ååQ R
Contains
ååR Z
(
ååZ [
ilceAd
åå[ a
,
ååa b
StringComparison
ååc s
.
åås t 
OrdinalIgnoreCaseååt Ö
)ååÖ Ü
==ååá â
trueååä é
)ååé è
;ååè ê
}
çç 
if
èè 
(
èè 
!
èè 
string
èè 
.
èè 
IsNullOrEmpty
èè )
(
èè) *
	mahalleAd
èè* 3
)
èè3 4
)
èè4 5
{
êê 
tasinmazlar
ëë 
=
ëë  !
tasinmazlar
ëë" -
.
ëë- .
Where
ëë. 3
(
ëë3 4
t
ëë4 5
=>
ëë6 8
t
ëë9 :
.
ëë: ;
Mahalle
ëë; B
?
ëëB C
.
ëëC D

MahalleAdi
ëëD N
.
ëëN O
Contains
ëëO W
(
ëëW X
	mahalleAd
ëëX a
,
ëëa b
StringComparison
ëëc s
.
ëës t 
OrdinalIgnoreCaseëët Ö
)ëëÖ Ü
==ëëá â
trueëëä é
)ëëé è
;ëëè ê
}
íí 
if
îî 
(
îî 
!
îî 
string
îî 
.
îî 
IsNullOrEmpty
îî )
(
îî) *
ada
îî* -
)
îî- .
)
îî. /
{
ïï 
tasinmazlar
ññ 
=
ññ  !
tasinmazlar
ññ" -
.
ññ- .
Where
ññ. 3
(
ññ3 4
t
ññ4 5
=>
ññ6 8
t
ññ9 :
.
ññ: ;
Ada
ññ; >
.
ññ> ?
Contains
ññ? G
(
ññG H
ada
ññH K
,
ññK L
StringComparison
ññM ]
.
ññ] ^
OrdinalIgnoreCase
ññ^ o
)
ñño p
)
ññp q
;
ññq r
}
óó 
if
ôô 
(
ôô 
!
ôô 
string
ôô 
.
ôô 
IsNullOrEmpty
ôô )
(
ôô) *
parsel
ôô* 0
)
ôô0 1
)
ôô1 2
{
öö 
tasinmazlar
õõ 
=
õõ  !
tasinmazlar
õõ" -
.
õõ- .
Where
õõ. 3
(
õõ3 4
t
õõ4 5
=>
õõ6 8
t
õõ9 :
.
õõ: ;
Parsel
õõ; A
.
õõA B
Contains
õõB J
(
õõJ K
parsel
õõK Q
,
õõQ R
StringComparison
õõS c
.
õõc d
OrdinalIgnoreCase
õõd u
)
õõu v
)
õõv w
;
õõw x
}
úú 
if
ûû 
(
ûû 
!
ûû 
string
ûû 
.
ûû 
IsNullOrEmpty
ûû )
(
ûû) *
nitelik
ûû* 1
)
ûû1 2
)
ûû2 3
{
üü 
tasinmazlar
†† 
=
††  !
tasinmazlar
††" -
.
††- .
Where
††. 3
(
††3 4
t
††4 5
=>
††6 8
t
††9 :
.
††: ;
Nitelik
††; B
.
††B C
Contains
††C K
(
††K L
nitelik
††L S
,
††S T
StringComparison
††U e
.
††e f
OrdinalIgnoreCase
††f w
)
††w x
)
††x y
;
††y z
}
°° 
if
££ 
(
££ 
kullaniciId
££ 
.
££  
HasValue
££  (
)
££( )
{
§§ 
tasinmazlar
•• 
=
••  !
tasinmazlar
••" -
.
••- .
Where
••. 3
(
••3 4
t
••4 5
=>
••6 8
t
••9 :
.
••: ;
KullaniciId
••; F
==
••G I
kullaniciId
••J U
.
••U V
Value
••V [
)
••[ \
;
••\ ]
}
¶¶ 
var
©© 
tasinmazDTOs
©©  
=
©©! "
tasinmazlar
©©# .
.
©©. /
Select
©©/ 5
(
©©5 6
t
©©6 7
=>
©©8 :
new
©©; >
TasinmazDTO
©©? J
{
™™ 

TasinmazId
´´ 
=
´´  
t
´´! "
.
´´" #

TasinmazId
´´# -
,
´´- .
Ada
¨¨ 
=
¨¨ 
t
¨¨ 
.
¨¨ 
Ada
¨¨ 
,
¨¨  
Parsel
≠≠ 
=
≠≠ 
t
≠≠ 
.
≠≠ 
Parsel
≠≠ %
,
≠≠% &
Nitelik
ÆÆ 
=
ÆÆ 
t
ÆÆ 
.
ÆÆ  
Nitelik
ÆÆ  '
,
ÆÆ' ( 
KoordinatBilgileri
ØØ &
=
ØØ' (
t
ØØ) *
.
ØØ* + 
KoordinatBilgileri
ØØ+ =
,
ØØ= >
KullaniciId
∞∞ 
=
∞∞  !
t
∞∞" #
.
∞∞# $
KullaniciId
∞∞$ /
,
∞∞/ 0
	MahalleId
±± 
=
±± 
t
±±  !
.
±±! "
	MahalleId
±±" +
,
±±+ ,
Mahalle
≤≤ 
=
≤≤ 
t
≤≤ 
.
≤≤  
Mahalle
≤≤  '
!=
≤≤( *
null
≤≤+ /
?
≤≤0 1
new
≤≤2 5

MahalleDTO
≤≤6 @
{
≥≥ 
	MahalleId
¥¥ !
=
¥¥" #
t
¥¥$ %
.
¥¥% &
Mahalle
¥¥& -
.
¥¥- .
	MahalleId
¥¥. 7
,
¥¥7 8

MahalleAdi
µµ "
=
µµ# $
t
µµ% &
.
µµ& '
Mahalle
µµ' .
.
µµ. /

MahalleAdi
µµ/ 9
,
µµ9 :
IlceId
∂∂ 
=
∂∂  
t
∂∂! "
.
∂∂" #
Mahalle
∂∂# *
.
∂∂* +
IlceId
∂∂+ 1
,
∂∂1 2
Ilce
∑∑ 
=
∑∑ 
t
∑∑  
.
∑∑  !
Mahalle
∑∑! (
.
∑∑( )
Ilce
∑∑) -
!=
∑∑. 0
null
∑∑1 5
?
∑∑6 7
new
∑∑8 ;
IlceDTO
∑∑< C
{
∏∏ 
IlceId
ππ "
=
ππ# $
t
ππ% &
.
ππ& '
Mahalle
ππ' .
.
ππ. /
Ilce
ππ/ 3
.
ππ3 4
IlceId
ππ4 :
,
ππ: ;
IlceAdi
∫∫ #
=
∫∫$ %
t
∫∫& '
.
∫∫' (
Mahalle
∫∫( /
.
∫∫/ 0
Ilce
∫∫0 4
.
∫∫4 5
IlceAdi
∫∫5 <
,
∫∫< =
IlId
ªª  
=
ªª! "
t
ªª# $
.
ªª$ %
Mahalle
ªª% ,
.
ªª, -
Ilce
ªª- 1
.
ªª1 2
IlId
ªª2 6
,
ªª6 7
Il
ºº 
=
ºº  
t
ºº! "
.
ºº" #
Mahalle
ºº# *
.
ºº* +
Ilce
ºº+ /
.
ºº/ 0
Il
ºº0 2
!=
ºº3 5
null
ºº6 :
?
ºº; <
new
ºº= @
IlDTO
ººA F
{
ΩΩ 
IlId
ææ  $
=
ææ% &
t
ææ' (
.
ææ( )
Mahalle
ææ) 0
.
ææ0 1
Ilce
ææ1 5
.
ææ5 6
Il
ææ6 8
.
ææ8 9
IlId
ææ9 =
,
ææ= >
IlAdi
øø  %
=
øø& '
t
øø( )
.
øø) *
Mahalle
øø* 1
.
øø1 2
Ilce
øø2 6
.
øø6 7
Il
øø7 9
.
øø9 :
IlAdi
øø: ?
}
¿¿ 
:
¿¿ 
null
¿¿  $
}
¡¡ 
:
¡¡ 
null
¡¡  
}
¬¬ 
:
¬¬ 
null
¬¬ 
}
√√ 
)
√√ 
.
√√ 
ToList
√√ 
(
√√ 
)
√√ 
;
√√ 
return
≈≈ 
Ok
≈≈ 
(
≈≈ 
tasinmazDTOs
≈≈ &
)
≈≈& '
;
≈≈' (
}
∆∆ 
catch
«« 
(
«« 
	Exception
«« 
ex
«« 
)
««  
{
»» 
return
ÀÀ 

StatusCode
ÀÀ !
(
ÀÀ! "
StatusCodes
ÀÀ" -
.
ÀÀ- .*
Status500InternalServerError
ÀÀ. J
,
ÀÀJ K
$"
ÀÀL N
$str
ÀÀN e
{
ÀÀe f
ex
ÀÀf h
.
ÀÀh i
Message
ÀÀi p
}
ÀÀp q
"
ÀÀq r
)
ÀÀr s
;
ÀÀs t
}
ÃÃ 
}
ÕÕ 	
}
÷÷ 
}◊◊ –0
dC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Controllers\MahalleController.cs
	namespace 	
	ilkDeneme
 
. 
Controllers 
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class 
MahalleController "
:# $
ControllerBase% 3
{ 
private 
readonly 
IMahalleService (
_mahalleService) 8
;8 9
public 
MahalleController  
(  !
IMahalleService! 0
mahalleService1 ?
)? @
{ 	
_mahalleService 
= 
mahalleService ,
;, -
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
Mahalle3 :
>: ;
>; <
>< =
GetMahalleler> K
(K L
)L M
{ 	
var 

mahalleler 
= 
await "
_mahalleService# 2
.2 3
GetMahalleler3 @
(@ A
)A B
;B C
return 
Ok 
( 

mahalleler  
)  !
;! "
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
async 
Task 
< 
ActionResult &
<& '
Mahalle' .
>. /
>/ 0

GetMahalle1 ;
(; <
int< ?
id@ B
)B C
{ 	
var 
mahalle 
= 
await 
_mahalleService  /
./ 0

GetMahalle0 :
(: ;
id; =
)= >
;> ?
if 
( 
mahalle 
== 
null 
)  
{   
return!! 
NotFound!! 
(!!  
)!!  !
;!!! "
}"" 
return$$ 
Ok$$ 
($$ 
mahalle$$ 
)$$ 
;$$ 
}%% 	
['' 	
HttpGet''	 
('' 
$str'' +
)''+ ,
]'', -
public(( 
async(( 
Task(( 
<(( 
ActionResult(( &
<((& '
List((' +
<((+ ,
Mahalle((, 3
>((3 4
>((4 5
>((5 6!
GetMahallelerByIlceId((7 L
(((L M
int((M P
ilceId((Q W
)((W X
{)) 	
var** 

mahalleler** 
=** 
await** "
_mahalleService**# 2
.**2 3!
GetMahallelerByIlceId**3 H
(**H I
ilceId**I O
)**O P
;**P Q
if++ 
(++ 

mahalleler++ 
==++ 
null++ "
||++# %

mahalleler++& 0
.++0 1
Count++1 6
==++7 9
$num++: ;
)++; <
{,, 
return-- 
NotFound-- 
(--  
)--  !
;--! "
}.. 
return00 
Ok00 
(00 

mahalleler00  
)00  !
;00! "
}11 	
[44 	
HttpPost44	 
]44 
public55 
async55 
Task55 
<55 
ActionResult55 &
<55& '
Mahalle55' .
>55. /
>55/ 0
CreateMahalle551 >
(55> ?
Mahalle55? F
mahalle55G N
)55N O
{66 	
var77 

newMahalle77 
=77 
await77 "
_mahalleService77# 2
.772 3
CreateMahalle773 @
(77@ A
mahalle77A H
)77H I
;77I J
return88 
CreatedAtAction88 "
(88" #
nameof88# )
(88) *

GetMahalle88* 4
)884 5
,885 6
new887 :
{88; <
id88= ?
=88@ A

newMahalle88B L
.88L M
	MahalleId88M V
}88W X
,88X Y

newMahalle88Z d
)88d e
;88e f
}99 	
[;; 	
HttpPut;;	 
(;; 
$str;; 
);; 
];; 
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (
UpdateMahalle<<) 6
(<<6 7
int<<7 :
id<<; =
,<<= >
Mahalle<<? F
mahalle<<G N
)<<N O
{== 	
var>> 
updatedMahalle>> 
=>>  
await>>! &
_mahalleService>>' 6
.>>6 7
UpdateMahalle>>7 D
(>>D E
id>>E G
,>>G H
mahalle>>I P
)>>P Q
;>>Q R
if?? 
(?? 
updatedMahalle?? 
==?? !
null??" &
)??& '
{@@ 
returnAA 
NotFoundAA 
(AA  
)AA  !
;AA! "
}BB 
returnDD 
	NoContentDD 
(DD 
)DD 
;DD 
}EE 	
[GG 	

HttpDeleteGG	 
(GG 
$strGG 
)GG 
]GG 
publicHH 
asyncHH 
TaskHH 
<HH 
IActionResultHH '
>HH' (
DeleteMahalleHH) 6
(HH6 7
intHH7 :
idHH; =
)HH= >
{II 	
varJJ 
resultJJ 
=JJ 
awaitJJ 
_mahalleServiceJJ .
.JJ. /
DeleteMahalleJJ/ <
(JJ< =
idJJ= ?
)JJ? @
;JJ@ A
ifKK 
(KK 
!KK 
resultKK 
)KK 
{LL 
returnMM 
NotFoundMM 
(MM  
)MM  !
;MM! "
}NN 
returnPP 
	NoContentPP 
(PP 
)PP 
;PP 
}QQ 	
}RR 
}SS ª
aC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Controllers\LogsController.cs
	namespace 	
	ilkDeneme
 
. 
Controllers 
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class 
LogsController 
:  !
ControllerBase" 0
{ 
private 
readonly 

LogService #
_logService$ /
;/ 0
public 
LogsController 
( 

LogService (

logService) 3
)3 4
{ 	
_logService 
= 

logService $
;$ %
} 	
[ 	
HttpPost	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetLogs) 0
(0 1
LogFilterDTO1 =
filter> D
)D E
{ 	
var 
logs 
= 
await 
_logService (
.( )
GetLogsAsync) 5
(5 6
filter6 <
)< =
;= >
return 
Ok 
( 
logs 
) 
; 
} 	
[ 	
HttpPost	 
( 
$str 
) 
] 
public 
IActionResult 

ExportLogs '
(' (
[( )
FromBody) 1
]1 2
List3 7
<7 8
Log8 ;
>; <
logs= A
)A B
{ 	
return 
Ok 
( 
) 
; 
}   	
["" 	
HttpPost""	 
]"" 
public## 
async## 
Task## 
<## 
IActionResult## '
>##' (
AddLog##) /
(##/ 0
[##0 1
FromBody##1 9
]##9 :
Log##; >
log##? B
)##B C
{$$ 	
await%% 
_logService%% 
.%% 
AddLogAsync%% )
(%%) *
log%%* -
)%%- .
;%%. /
return&& 
Ok&& 
(&& 
)&& 
;&& 
}'' 	
}(( 
}** ß&
_C:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Controllers\IlController.cs
	namespace 	
	ilkDeneme
 
. 
Controllers 
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class 
IlController 
: 
ControllerBase  .
{ 
private 
readonly 

IIlService #

_ilService$ .
;. /
public 
IlController 
( 

IIlService &
	ilService' 0
)0 1
{ 	

_ilService 
= 
	ilService "
;" #
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
Il3 5
>5 6
>6 7
>7 8
GetIller9 A
(A B
)B C
{ 	
var 
iller 
= 
await 

_ilService (
.( )
GetIller) 1
(1 2
)2 3
;3 4
return 
Ok 
( 
iller 
) 
; 
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
async 
Task 
< 
ActionResult &
<& '
Il' )
>) *
>* +
GetIl, 1
(1 2
int2 5
id6 8
)8 9
{ 	
var 
il 
= 
await 

_ilService %
.% &
GetIl& +
(+ ,
id, .
). /
;/ 0
if 
( 
il 
== 
null 
) 
{   
return!! 
NotFound!! 
(!!  
)!!  !
;!!! "
}"" 
return$$ 
Ok$$ 
($$ 
il$$ 
)$$ 
;$$ 
}%% 	
['' 	
HttpPost''	 
]'' 
public(( 
async(( 
Task(( 
<(( 
ActionResult(( &
<((& '
Il((' )
>(() *
>((* +
CreateIl((, 4
(((4 5
Il((5 7
il((8 :
)((: ;
{)) 	
var** 
newIl** 
=** 
await** 

_ilService** (
.**( )
CreateIl**) 1
(**1 2
il**2 4
)**4 5
;**5 6
return++ 
CreatedAtAction++ "
(++" #
nameof++# )
(++) *
GetIl++* /
)++/ 0
,++0 1
new++2 5
{++6 7
id++8 :
=++; <
newIl++= B
.++B C
IlId++C G
}++H I
,++I J
newIl++K P
)++P Q
;++Q R
},, 	
[.. 	
HttpPut..	 
(.. 
$str.. 
).. 
].. 
public// 
async// 
Task// 
<// 
IActionResult// '
>//' (
UpdateIl//) 1
(//1 2
int//2 5
id//6 8
,//8 9
Il//: <
il//= ?
)//? @
{00 	
var11 
	updatedIl11 
=11 
await11 !

_ilService11" ,
.11, -
UpdateIl11- 5
(115 6
id116 8
,118 9
il11: <
)11< =
;11= >
if22 
(22 
	updatedIl22 
==22 
null22 !
)22! "
{33 
return44 
NotFound44 
(44  
)44  !
;44! "
}55 
return77 
	NoContent77 
(77 
)77 
;77 
}88 	
[:: 	

HttpDelete::	 
(:: 
$str:: 
):: 
]:: 
public;; 
async;; 
Task;; 
<;; 
IActionResult;; '
>;;' (
DeleteIl;;) 1
(;;1 2
int;;2 5
id;;6 8
);;8 9
{<< 	
var== 
result== 
=== 
await== 

_ilService== )
.==) *
DeleteIl==* 2
(==2 3
id==3 5
)==5 6
;==6 7
if>> 
(>> 
!>> 
result>> 
)>> 
{?? 
return@@ 
NotFound@@ 
(@@  
)@@  !
;@@! "
}AA 
returnCC 
	NoContentCC 
(CC 
)CC 
;CC 
}DD 	
}EE 
}FF ©/
aC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Controllers\IlceController.cs
	namespace 	
	ilkDeneme
 
. 
Controllers 
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class 
IlceController 
:  !
ControllerBase" 0
{ 
private 
readonly 
IIlceService %
_ilceService& 2
;2 3
public 
IlceController 
( 
IIlceService *
ilceService+ 6
)6 7
{ 	
_ilceService 
= 
ilceService &
;& '
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
Ilce3 7
>7 8
>8 9
>9 :

GetIlceler; E
(E F
)F G
{ 	
var 
ilceler 
= 
await 
_ilceService  ,
., -

GetIlceler- 7
(7 8
)8 9
;9 :
return 
Ok 
( 
ilceler 
) 
; 
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
async 
Task 
< 
ActionResult &
<& '
Ilce' +
>+ ,
>, -
GetIlce. 5
(5 6
int6 9
id: <
)< =
{ 	
var 
ilce 
= 
await 
_ilceService )
.) *
GetIlce* 1
(1 2
id2 4
)4 5
;5 6
if 
( 
ilce 
== 
null 
) 
{   
return!! 
NotFound!! 
(!!  
)!!  !
;!!! "
}"" 
return$$ 
Ok$$ 
($$ 
ilce$$ 
)$$ 
;$$ 
}%% 	
['' 	
HttpGet''	 
('' 
$str''  
)''  !
]''! "
public(( 
async(( 
Task(( 
<(( 
ActionResult(( &
<((& '
List((' +
<((+ ,
Ilce((, 0
>((0 1
>((1 2
>((2 3
GetIlcelerByIlId((4 D
(((D E
int((E H
ilId((I M
)((M N
{)) 	
var** 
ilceler** 
=** 
await** 
_ilceService**  ,
.**, -
GetIlcelerByIlId**- =
(**= >
ilId**> B
)**B C
;**C D
if++ 
(++ 
ilceler++ 
==++ 
null++ 
||++  "
ilceler++# *
.++* +
Count+++ 0
==++1 3
$num++4 5
)++5 6
{,, 
return-- 
NotFound-- 
(--  
)--  !
;--! "
}.. 
return00 
Ok00 
(00 
ilceler00 
)00 
;00 
}11 	
[55 	
HttpPost55	 
]55 
public66 
async66 
Task66 
<66 
ActionResult66 &
<66& '
Ilce66' +
>66+ ,
>66, -

CreateIlce66. 8
(668 9
Ilce669 =
ilce66> B
)66B C
{77 	
var88 
newIlce88 
=88 
await88 
_ilceService88  ,
.88, -

CreateIlce88- 7
(887 8
ilce888 <
)88< =
;88= >
return99 
CreatedAtAction99 "
(99" #
nameof99# )
(99) *
GetIlce99* 1
)991 2
,992 3
new994 7
{998 9
id99: <
=99= >
newIlce99? F
.99F G
IlceId99G M
}99N O
,99O P
newIlce99Q X
)99X Y
;99Y Z
}:: 	
[<< 	
HttpPut<<	 
(<< 
$str<< 
)<< 
]<< 
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (

UpdateIlce==) 3
(==3 4
int==4 7
id==8 :
,==: ;
Ilce==< @
ilce==A E
)==E F
{>> 	
var?? 
updatedIlce?? 
=?? 
await?? #
_ilceService??$ 0
.??0 1

UpdateIlce??1 ;
(??; <
id??< >
,??> ?
ilce??@ D
)??D E
;??E F
if@@ 
(@@ 
updatedIlce@@ 
==@@ 
null@@ #
)@@# $
{AA 
returnBB 
NotFoundBB 
(BB  
)BB  !
;BB! "
}CC 
returnEE 
	NoContentEE 
(EE 
)EE 
;EE 
}FF 	
[HH 	

HttpDeleteHH	 
(HH 
$strHH 
)HH 
]HH 
publicII 
asyncII 
TaskII 
<II 
IActionResultII '
>II' (

DeleteIlceII) 3
(II3 4
intII4 7
idII8 :
)II: ;
{JJ 	
varKK 
resultKK 
=KK 
awaitKK 
_ilceServiceKK +
.KK+ ,

DeleteIlceKK, 6
(KK6 7
idKK7 9
)KK9 :
;KK: ;
ifLL 
(LL 
!LL 
resultLL 
)LL 
{MM 
returnNN 
NotFoundNN 
(NN  
)NN  !
;NN! "
}OO 
returnQQ 
	NoContentQQ 
(QQ 
)QQ 
;QQ 
}RR 	
}SS 
}UU ∫D
aC:\Users\karik\OneDrive\Masa√ºst√º\Yeni klas√∂r\ilkDeneme\ilkDeneme\Controllers\AuthController.cs
	namespace 	
	ilkDeneme
 
. 
Controllers 
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
AuthController 
:  !
ControllerBase" 0
{ 
private 
readonly 
IAuthRepository (
_authRepository) 8
;8 9
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
private 
readonly 
ILoggingService (
_loggingService) 8
;8 9
public 
AuthController 
( 
IAuthRepository -
authRepository. <
,< =
IConfiguration> L
configurationM Z
,Z [
ILoggingService\ k
loggingServicel z
)z {
{ 	
_authRepository 
= 
authRepository ,
;, -
_configuration 
= 
configuration *
;* +
_loggingService 
= 
loggingService ,
;, -
} 	
[ 	
HttpPost	 
( 
$str 
) 
] 
public   
async   
Task   
<   
IActionResult   '
>  ' (
Register  ) 1
(  1 2
[  2 3
FromBody  3 ;
]  ; <
UserForRegisterDto  = O
userForRegisterDto  P b
)  b c
{!! 	
if"" 
("" 
await"" 
_authRepository"" %
.""% &

UserExists""& 0
(""0 1
userForRegisterDto""1 C
.""C D
Email""D I
)""I J
)""J K
{## 
await$$ 
_loggingService$$ %
.$$% &
	LogAction$$& /
($$/ 0
$num$$0 1
,$$1 2
$num$$3 4
,$$4 5
$num$$6 7
,$$7 8
$str$$9 O
,$$O P
HttpContext$$Q \
.$$\ ]

Connection$$] g
.$$g h
RemoteIpAddress$$h w
?$$w x
.$$x y
ToString	$$y Å
(
$$Å Ç
)
$$Ç É
)
$$É Ñ
;
$$Ñ Ö
return%% 

BadRequest%% !
(%%! "
$str%%" 8
)%%8 9
;%%9 :
}&& 
var(( 
userToCreate(( 
=(( 
new(( "
User((# '
{)) 
Email** 
=** 
userForRegisterDto** *
.*** +
Email**+ 0
,**0 1
Role++ 
=++ 
$str++ 
},, 
;,, 
var.. 
createdUser.. 
=.. 
await.. #
_authRepository..$ 3
...3 4
Register..4 <
(..< =
userToCreate..= I
,..I J
userForRegisterDto..K ]
...] ^
Password..^ f
)..f g
;..g h
await11 
_loggingService11 !
.11! "
	LogAction11" +
(11+ ,
createdUser11, 7
.117 8
KullaniciId118 C
,11C D
$num11E F
,11F G
$num11H I
,11I J
$str11K i
,11i j
HttpContext11k v
.11v w

Connection	11w Å
.
11Å Ç
RemoteIpAddress
11Ç ë
?
11ë í
.
11í ì
ToString
11ì õ
(
11õ ú
)
11ú ù
)
11ù û
;
11û ü
return33 

StatusCode33 
(33 
$num33 !
)33! "
;33" #
}44 	
[66 	
HttpPost66	 
(66 
$str66 
)66 
]66 
public77 
async77 
Task77 
<77 
ActionResult77 &
>77& '
Login77( -
(77- .
[77. /
FromBody77/ 7
]777 8
UserForLoginDto779 H
userForLoginDto77I X
)77X Y
{88 	
var99 
user99 
=99 
await99 
_authRepository99 ,
.99, -
Login99- 2
(992 3
userForLoginDto993 B
.99B C
Email99C H
,99H I
userForLoginDto99J Y
.99Y Z
Password99Z b
)99b c
;99c d
if:: 
(:: 
user:: 
==:: 
null:: 
):: 
{;; 
await<< 
_loggingService<< %
.<<% &
	LogAction<<& /
(<</ 0
$num<<0 1
,<<1 2
$num<<3 4
,<<4 5
$num<<6 7
,<<7 8
$str<<9 O
,<<O P
HttpContext<<Q \
.<<\ ]

Connection<<] g
.<<g h
RemoteIpAddress<<h w
?<<w x
.<<x y
ToString	<<y Å
(
<<Å Ç
)
<<Ç É
)
<<É Ñ
;
<<Ñ Ö
return== 
Unauthorized== #
(==# $
$str==$ ;
)==; <
;==< =
}>> 
var@@ 
tokenHandler@@ 
=@@ 
new@@ "#
JwtSecurityTokenHandler@@# :
(@@: ;
)@@; <
;@@< =
varAA 
keyAA 
=AA 
EncodingAA 
.AA 
ASCIIAA $
.AA$ %
GetBytesAA% -
(AA- .
_configurationAA. <
.AA< =

GetSectionAA= G
(AAG H
$strAAH [
)AA[ \
.AA\ ]
ValueAA] b
)AAb c
;AAc d
varCC 
tokenDescriptorCC 
=CC  !
newCC" %#
SecurityTokenDescriptorCC& =
{DD 
SubjectEE 
=EE 
newEE 
ClaimsIdentityEE ,
(EE, -
newEE- 0
ClaimEE1 6
[EE6 7
]EE7 8
{EE9 :
newFF 
ClaimFF 
(FF 

ClaimTypesFF (
.FF( )
NameIdentifierFF) 7
,FF7 8
userFF9 =
.FF= >
KullaniciIdFF> I
.FFI J
ToStringFFJ R
(FFR S
)FFS T
)FFT U
,FFU V
newGG 
ClaimGG 
(GG 

ClaimTypesGG (
.GG( )
NameGG) -
,GG- .
userGG/ 3
.GG3 4
EmailGG4 9
)GG9 :
,GG: ;
newHH 
ClaimHH 
(HH 

ClaimTypesHH (
.HH( )
RoleHH) -
,HH- .
userHH/ 3
.HH3 4
RoleHH4 8
??HH9 ;
stringHH< B
.HHB C
EmptyHHC H
)HHH I
}II 
)II 
,II 
ExpiresJJ 
=JJ 
DateTimeJJ "
.JJ" #
NowJJ# &
.JJ& '
AddDaysJJ' .
(JJ. /
$numJJ/ 0
)JJ0 1
,JJ1 2
IssuerKK 
=KK 
_configurationKK '
[KK' (
$strKK( <
]KK< =
,KK= >
AudienceLL 
=LL 
_configurationLL )
[LL) *
$strLL* @
]LL@ A
,LLA B
SigningCredentialsMM "
=MM# $
newMM% (
SigningCredentialsMM) ;
(MM; <
newMM< ? 
SymmetricSecurityKeyMM@ T
(MMT U
keyMMU X
)MMX Y
,MMY Z
SecurityAlgorithmsMM[ m
.MMm n 
HmacSha256Signature	MMn Å
)
MMÅ Ç
}NN 
;NN 
varPP 
tokenPP 
=PP 
tokenHandlerPP $
.PP$ %
CreateTokenPP% 0
(PP0 1
tokenDescriptorPP1 @
)PP@ A
;PPA B
varQQ 
tokenStringQQ 
=QQ 
tokenHandlerQQ *
.QQ* +

WriteTokenQQ+ 5
(QQ5 6
tokenQQ6 ;
)QQ; <
;QQ< =
awaitTT 
_loggingServiceTT !
.TT! "
	LogActionTT" +
(TT+ ,
userTT, 0
.TT0 1
KullaniciIdTT1 <
,TT< =
$numTT> ?
,TT? @
$numTTA B
,TTB C
$strTTD T
,TTT U
HttpContextTTV a
.TTa b

ConnectionTTb l
.TTl m
RemoteIpAddressTTm |
?TT| }
.TT} ~
ToString	TT~ Ü
(
TTÜ á
)
TTá à
)
TTà â
;
TTâ ä
returnVV 
OkVV 
(VV 
newVV 
{VV 
tokenVV !
=VV" #
tokenStringVV$ /
}VV0 1
)VV1 2
;VV2 3
}WW 	
}XX 
}YY 