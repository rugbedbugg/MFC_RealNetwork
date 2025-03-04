.class public final Lio/ktor/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.kt"


# static fields
.field private static final ALPN:Ljava/lang/String;

.field private static final Accept:Ljava/lang/String;

.field private static final AcceptCharset:Ljava/lang/String;

.field private static final AcceptEncoding:Ljava/lang/String;

.field private static final AcceptLanguage:Ljava/lang/String;

.field private static final AcceptRanges:Ljava/lang/String;

.field private static final AccessControlAllowCredentials:Ljava/lang/String;

.field private static final AccessControlAllowHeaders:Ljava/lang/String;

.field private static final AccessControlAllowMethods:Ljava/lang/String;

.field private static final AccessControlAllowOrigin:Ljava/lang/String;

.field private static final AccessControlExposeHeaders:Ljava/lang/String;

.field private static final AccessControlMaxAge:Ljava/lang/String;

.field private static final AccessControlRequestHeaders:Ljava/lang/String;

.field private static final AccessControlRequestMethod:Ljava/lang/String;

.field private static final Age:Ljava/lang/String;

.field private static final Allow:Ljava/lang/String;

.field private static final AuthenticationInfo:Ljava/lang/String;

.field private static final Authorization:Ljava/lang/String;

.field private static final CacheControl:Ljava/lang/String;

.field private static final Connection:Ljava/lang/String;

.field private static final ContentDisposition:Ljava/lang/String;

.field private static final ContentEncoding:Ljava/lang/String;

.field private static final ContentLanguage:Ljava/lang/String;

.field private static final ContentLength:Ljava/lang/String;

.field private static final ContentLocation:Ljava/lang/String;

.field private static final ContentRange:Ljava/lang/String;

.field private static final ContentType:Ljava/lang/String;

.field private static final Cookie:Ljava/lang/String;

.field private static final DASL:Ljava/lang/String;

.field private static final DAV:Ljava/lang/String;

.field private static final Date:Ljava/lang/String;

.field private static final Depth:Ljava/lang/String;

.field private static final Destination:Ljava/lang/String;

.field private static final ETag:Ljava/lang/String;

.field private static final Expect:Ljava/lang/String;

.field private static final Expires:Ljava/lang/String;

.field private static final Forwarded:Ljava/lang/String;

.field private static final From:Ljava/lang/String;

.field private static final HTTP2Settings:Ljava/lang/String;

.field private static final Host:Ljava/lang/String;

.field public static final INSTANCE:Lio/ktor/http/HttpHeaders;

.field private static final If:Ljava/lang/String;

.field private static final IfMatch:Ljava/lang/String;

.field private static final IfModifiedSince:Ljava/lang/String;

.field private static final IfNoneMatch:Ljava/lang/String;

.field private static final IfRange:Ljava/lang/String;

.field private static final IfScheduleTagMatch:Ljava/lang/String;

.field private static final IfUnmodifiedSince:Ljava/lang/String;

.field private static final LastModified:Ljava/lang/String;

.field private static final Link:Ljava/lang/String;

.field private static final Location:Ljava/lang/String;

.field private static final LockToken:Ljava/lang/String;

.field private static final MIMEVersion:Ljava/lang/String;

.field private static final MaxForwards:Ljava/lang/String;

.field private static final OrderingType:Ljava/lang/String;

.field private static final Origin:Ljava/lang/String;

.field private static final Overwrite:Ljava/lang/String;

.field private static final Position:Ljava/lang/String;

.field private static final Pragma:Ljava/lang/String;

.field private static final Prefer:Ljava/lang/String;

.field private static final PreferenceApplied:Ljava/lang/String;

.field private static final ProxyAuthenticate:Ljava/lang/String;

.field private static final ProxyAuthenticationInfo:Ljava/lang/String;

.field private static final ProxyAuthorization:Ljava/lang/String;

.field private static final PublicKeyPins:Ljava/lang/String;

.field private static final PublicKeyPinsReportOnly:Ljava/lang/String;

.field private static final Range:Ljava/lang/String;

.field private static final Referrer:Ljava/lang/String;

.field private static final RetryAfter:Ljava/lang/String;

.field private static final SLUG:Ljava/lang/String;

.field private static final ScheduleReply:Ljava/lang/String;

.field private static final ScheduleTag:Ljava/lang/String;

.field private static final SecWebSocketAccept:Ljava/lang/String;

.field private static final SecWebSocketExtensions:Ljava/lang/String;

.field private static final SecWebSocketKey:Ljava/lang/String;

.field private static final SecWebSocketProtocol:Ljava/lang/String;

.field private static final SecWebSocketVersion:Ljava/lang/String;

.field private static final Server:Ljava/lang/String;

.field private static final SetCookie:Ljava/lang/String;

.field private static final StrictTransportSecurity:Ljava/lang/String;

.field private static final TE:Ljava/lang/String;

.field private static final Timeout:Ljava/lang/String;

.field private static final Trailer:Ljava/lang/String;

.field private static final TransferEncoding:Ljava/lang/String;

.field private static final UnsafeHeadersArray:[Ljava/lang/String;

.field private static final UnsafeHeadersList:Ljava/util/List;

.field private static final Upgrade:Ljava/lang/String;

.field private static final UserAgent:Ljava/lang/String;

.field private static final Vary:Ljava/lang/String;

.field private static final Via:Ljava/lang/String;

.field private static final WWWAuthenticate:Ljava/lang/String;

.field private static final Warning:Ljava/lang/String;

.field private static final XCorrelationId:Ljava/lang/String;

.field private static final XForwardedFor:Ljava/lang/String;

.field private static final XForwardedHost:Ljava/lang/String;

.field private static final XForwardedPort:Ljava/lang/String;

.field private static final XForwardedProto:Ljava/lang/String;

.field private static final XForwardedServer:Ljava/lang/String;

.field private static final XHttpMethodOverride:Ljava/lang/String;

.field private static final XRequestId:Ljava/lang/String;

.field private static final XTotalCount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/ktor/http/HttpHeaders;

    invoke-direct {v0}, Lio/ktor/http/HttpHeaders;-><init>()V

    sput-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    const-string v0, "Accept"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Accept:Ljava/lang/String;

    const-string v0, "Accept-Charset"

    sput-object v0, Lio/ktor/http/HttpHeaders;->AcceptCharset:Ljava/lang/String;

    const-string v0, "Accept-Encoding"

    sput-object v0, Lio/ktor/http/HttpHeaders;->AcceptEncoding:Ljava/lang/String;

    const-string v0, "Accept-Language"

    sput-object v0, Lio/ktor/http/HttpHeaders;->AcceptLanguage:Ljava/lang/String;

    const-string v0, "Accept-Ranges"

    sput-object v0, Lio/ktor/http/HttpHeaders;->AcceptRanges:Ljava/lang/String;

    const-string v0, "Age"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Age:Ljava/lang/String;

    const-string v0, "Allow"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Allow:Ljava/lang/String;

    const-string v0, "ALPN"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ALPN:Ljava/lang/String;

    const-string v0, "Authentication-Info"

    sput-object v0, Lio/ktor/http/HttpHeaders;->AuthenticationInfo:Ljava/lang/String;

    const-string v0, "Authorization"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Authorization:Ljava/lang/String;

    const-string v0, "Cache-Control"

    sput-object v0, Lio/ktor/http/HttpHeaders;->CacheControl:Ljava/lang/String;

    const-string v0, "Connection"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Connection:Ljava/lang/String;

    const-string v0, "Content-Disposition"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ContentDisposition:Ljava/lang/String;

    const-string v0, "Content-Encoding"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ContentEncoding:Ljava/lang/String;

    const-string v0, "Content-Language"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ContentLanguage:Ljava/lang/String;

    const-string v0, "Content-Length"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ContentLength:Ljava/lang/String;

    const-string v0, "Content-Location"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ContentLocation:Ljava/lang/String;

    const-string v0, "Content-Range"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ContentRange:Ljava/lang/String;

    const-string v0, "Content-Type"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ContentType:Ljava/lang/String;

    const-string v0, "Cookie"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Cookie:Ljava/lang/String;

    const-string v0, "DASL"

    sput-object v0, Lio/ktor/http/HttpHeaders;->DASL:Ljava/lang/String;

    const-string v0, "Date"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Date:Ljava/lang/String;

    const-string v0, "DAV"

    sput-object v0, Lio/ktor/http/HttpHeaders;->DAV:Ljava/lang/String;

    const-string v0, "Depth"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Depth:Ljava/lang/String;

    const-string v0, "Destination"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Destination:Ljava/lang/String;

    const-string v0, "ETag"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ETag:Ljava/lang/String;

    const-string v0, "Expect"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Expect:Ljava/lang/String;

    const-string v0, "Expires"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Expires:Ljava/lang/String;

    const-string v0, "From"

    sput-object v0, Lio/ktor/http/HttpHeaders;->From:Ljava/lang/String;

    const-string v0, "Forwarded"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Forwarded:Ljava/lang/String;

    const-string v0, "Host"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Host:Ljava/lang/String;

    const-string v0, "HTTP2-Settings"

    sput-object v0, Lio/ktor/http/HttpHeaders;->HTTP2Settings:Ljava/lang/String;

    const-string v0, "If"

    sput-object v0, Lio/ktor/http/HttpHeaders;->If:Ljava/lang/String;

    const-string v0, "If-Match"

    sput-object v0, Lio/ktor/http/HttpHeaders;->IfMatch:Ljava/lang/String;

    const-string v0, "If-Modified-Since"

    sput-object v0, Lio/ktor/http/HttpHeaders;->IfModifiedSince:Ljava/lang/String;

    const-string v0, "If-None-Match"

    sput-object v0, Lio/ktor/http/HttpHeaders;->IfNoneMatch:Ljava/lang/String;

    const-string v0, "If-Range"

    sput-object v0, Lio/ktor/http/HttpHeaders;->IfRange:Ljava/lang/String;

    const-string v0, "If-Schedule-Tag-Match"

    sput-object v0, Lio/ktor/http/HttpHeaders;->IfScheduleTagMatch:Ljava/lang/String;

    const-string v0, "If-Unmodified-Since"

    sput-object v0, Lio/ktor/http/HttpHeaders;->IfUnmodifiedSince:Ljava/lang/String;

    const-string v0, "Last-Modified"

    sput-object v0, Lio/ktor/http/HttpHeaders;->LastModified:Ljava/lang/String;

    const-string v0, "Location"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Location:Ljava/lang/String;

    const-string v0, "Lock-Token"

    sput-object v0, Lio/ktor/http/HttpHeaders;->LockToken:Ljava/lang/String;

    const-string v0, "Link"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Link:Ljava/lang/String;

    const-string v0, "Max-Forwards"

    sput-object v0, Lio/ktor/http/HttpHeaders;->MaxForwards:Ljava/lang/String;

    const-string v0, "MIME-Version"

    sput-object v0, Lio/ktor/http/HttpHeaders;->MIMEVersion:Ljava/lang/String;

    const-string v0, "Ordering-Type"

    sput-object v0, Lio/ktor/http/HttpHeaders;->OrderingType:Ljava/lang/String;

    const-string v0, "Origin"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Origin:Ljava/lang/String;

    const-string v0, "Overwrite"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Overwrite:Ljava/lang/String;

    const-string v0, "Position"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Position:Ljava/lang/String;

    const-string v0, "Pragma"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Pragma:Ljava/lang/String;

    const-string v0, "Prefer"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Prefer:Ljava/lang/String;

    const-string v0, "Preference-Applied"

    sput-object v0, Lio/ktor/http/HttpHeaders;->PreferenceApplied:Ljava/lang/String;

    const-string v0, "Proxy-Authenticate"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ProxyAuthenticate:Ljava/lang/String;

    const-string v0, "Proxy-Authentication-Info"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ProxyAuthenticationInfo:Ljava/lang/String;

    const-string v0, "Proxy-Authorization"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ProxyAuthorization:Ljava/lang/String;

    const-string v0, "Public-Key-Pins"

    sput-object v0, Lio/ktor/http/HttpHeaders;->PublicKeyPins:Ljava/lang/String;

    const-string v0, "Public-Key-Pins-Report-Only"

    sput-object v0, Lio/ktor/http/HttpHeaders;->PublicKeyPinsReportOnly:Ljava/lang/String;

    const-string v0, "Range"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Range:Ljava/lang/String;

    const-string v0, "Referer"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Referrer:Ljava/lang/String;

    const-string v0, "Retry-After"

    sput-object v0, Lio/ktor/http/HttpHeaders;->RetryAfter:Ljava/lang/String;

    const-string v0, "Schedule-Reply"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ScheduleReply:Ljava/lang/String;

    const-string v0, "Schedule-Tag"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ScheduleTag:Ljava/lang/String;

    const-string v0, "Sec-WebSocket-Accept"

    sput-object v0, Lio/ktor/http/HttpHeaders;->SecWebSocketAccept:Ljava/lang/String;

    const-string v0, "Sec-WebSocket-Extensions"

    sput-object v0, Lio/ktor/http/HttpHeaders;->SecWebSocketExtensions:Ljava/lang/String;

    const-string v0, "Sec-WebSocket-Key"

    sput-object v0, Lio/ktor/http/HttpHeaders;->SecWebSocketKey:Ljava/lang/String;

    const-string v0, "Sec-WebSocket-Protocol"

    sput-object v0, Lio/ktor/http/HttpHeaders;->SecWebSocketProtocol:Ljava/lang/String;

    const-string v0, "Sec-WebSocket-Version"

    sput-object v0, Lio/ktor/http/HttpHeaders;->SecWebSocketVersion:Ljava/lang/String;

    const-string v0, "Server"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Server:Ljava/lang/String;

    const-string v0, "Set-Cookie"

    sput-object v0, Lio/ktor/http/HttpHeaders;->SetCookie:Ljava/lang/String;

    const-string v0, "SLUG"

    sput-object v0, Lio/ktor/http/HttpHeaders;->SLUG:Ljava/lang/String;

    const-string v0, "Strict-Transport-Security"

    sput-object v0, Lio/ktor/http/HttpHeaders;->StrictTransportSecurity:Ljava/lang/String;

    const-string v0, "TE"

    sput-object v0, Lio/ktor/http/HttpHeaders;->TE:Ljava/lang/String;

    const-string v0, "Timeout"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Timeout:Ljava/lang/String;

    const-string v0, "Trailer"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Trailer:Ljava/lang/String;

    const-string v0, "Transfer-Encoding"

    sput-object v0, Lio/ktor/http/HttpHeaders;->TransferEncoding:Ljava/lang/String;

    const-string v1, "Upgrade"

    sput-object v1, Lio/ktor/http/HttpHeaders;->Upgrade:Ljava/lang/String;

    const-string v2, "User-Agent"

    sput-object v2, Lio/ktor/http/HttpHeaders;->UserAgent:Ljava/lang/String;

    const-string v2, "Vary"

    sput-object v2, Lio/ktor/http/HttpHeaders;->Vary:Ljava/lang/String;

    const-string v2, "Via"

    sput-object v2, Lio/ktor/http/HttpHeaders;->Via:Ljava/lang/String;

    const-string v2, "Warning"

    sput-object v2, Lio/ktor/http/HttpHeaders;->Warning:Ljava/lang/String;

    const-string v2, "WWW-Authenticate"

    sput-object v2, Lio/ktor/http/HttpHeaders;->WWWAuthenticate:Ljava/lang/String;

    const-string v2, "Access-Control-Allow-Origin"

    sput-object v2, Lio/ktor/http/HttpHeaders;->AccessControlAllowOrigin:Ljava/lang/String;

    const-string v2, "Access-Control-Allow-Methods"

    sput-object v2, Lio/ktor/http/HttpHeaders;->AccessControlAllowMethods:Ljava/lang/String;

    const-string v2, "Access-Control-Allow-Credentials"

    sput-object v2, Lio/ktor/http/HttpHeaders;->AccessControlAllowCredentials:Ljava/lang/String;

    const-string v2, "Access-Control-Allow-Headers"

    sput-object v2, Lio/ktor/http/HttpHeaders;->AccessControlAllowHeaders:Ljava/lang/String;

    const-string v2, "Access-Control-Request-Method"

    sput-object v2, Lio/ktor/http/HttpHeaders;->AccessControlRequestMethod:Ljava/lang/String;

    const-string v2, "Access-Control-Request-Headers"

    sput-object v2, Lio/ktor/http/HttpHeaders;->AccessControlRequestHeaders:Ljava/lang/String;

    const-string v2, "Access-Control-Expose-Headers"

    sput-object v2, Lio/ktor/http/HttpHeaders;->AccessControlExposeHeaders:Ljava/lang/String;

    const-string v2, "Access-Control-Max-Age"

    sput-object v2, Lio/ktor/http/HttpHeaders;->AccessControlMaxAge:Ljava/lang/String;

    const-string v2, "X-Http-Method-Override"

    sput-object v2, Lio/ktor/http/HttpHeaders;->XHttpMethodOverride:Ljava/lang/String;

    const-string v2, "X-Forwarded-Host"

    sput-object v2, Lio/ktor/http/HttpHeaders;->XForwardedHost:Ljava/lang/String;

    const-string v2, "X-Forwarded-Server"

    sput-object v2, Lio/ktor/http/HttpHeaders;->XForwardedServer:Ljava/lang/String;

    const-string v2, "X-Forwarded-Proto"

    sput-object v2, Lio/ktor/http/HttpHeaders;->XForwardedProto:Ljava/lang/String;

    const-string v2, "X-Forwarded-For"

    sput-object v2, Lio/ktor/http/HttpHeaders;->XForwardedFor:Ljava/lang/String;

    const-string v2, "X-Forwarded-Port"

    sput-object v2, Lio/ktor/http/HttpHeaders;->XForwardedPort:Ljava/lang/String;

    const-string v2, "X-Request-ID"

    sput-object v2, Lio/ktor/http/HttpHeaders;->XRequestId:Ljava/lang/String;

    const-string v2, "X-Correlation-ID"

    sput-object v2, Lio/ktor/http/HttpHeaders;->XCorrelationId:Ljava/lang/String;

    const-string v2, "X-Total-Count"

    sput-object v2, Lio/ktor/http/HttpHeaders;->XTotalCount:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/ktor/http/HttpHeaders;->UnsafeHeadersArray:[Ljava/lang/String;

    .line 141
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/ktor/http/HttpHeaders;->UnsafeHeadersList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkHeaderName(Ljava/lang/String;)V
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 1184
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x20

    .line 148
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    if-lez v4, :cond_0

    invoke-static {v2}, Lio/ktor/http/HttpHeadersKt;->access$isDelimiter(C)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Lio/ktor/http/IllegalHeaderNameException;

    invoke-direct {v0, p1, v1}, Lio/ktor/http/IllegalHeaderNameException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    return-void
.end method

.method public final checkHeaderValue(Ljava/lang/String;)V
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 1184
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x20

    .line 159
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    if-gez v4, :cond_1

    const/16 v4, 0x9

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    new-instance v0, Lio/ktor/http/IllegalHeaderValueException;

    invoke-direct {v0, p1, v1}, Lio/ktor/http/IllegalHeaderValueException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final getAccept()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpHeaders;->Accept:Ljava/lang/String;

    return-object v0
.end method

.method public final getAcceptCharset()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpHeaders;->AcceptCharset:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorization()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpHeaders;->Authorization:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpHeaders;->ContentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentLength()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpHeaders;->ContentLength:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpHeaders;->ContentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getCookie()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpHeaders;->Cookie:Ljava/lang/String;

    return-object v0
.end method

.method public final getDate()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpHeaders;->Date:Ljava/lang/String;

    return-object v0
.end method

.method public final getETag()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpHeaders;->ETag:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpires()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpHeaders;->Expires:Ljava/lang/String;

    return-object v0
.end method

.method public final getIfModifiedSince()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpHeaders;->IfModifiedSince:Ljava/lang/String;

    return-object v0
.end method

.method public final getIfUnmodifiedSince()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpHeaders;->IfUnmodifiedSince:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastModified()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpHeaders;->LastModified:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocation()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpHeaders;->Location:Ljava/lang/String;

    return-object v0
.end method

.method public final getRange()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpHeaders;->Range:Ljava/lang/String;

    return-object v0
.end method

.method public final getUnsafeHeadersList()Ljava/util/List;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpHeaders;->UnsafeHeadersList:Ljava/util/List;

    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpHeaders;->UserAgent:Ljava/lang/String;

    return-object v0
.end method
