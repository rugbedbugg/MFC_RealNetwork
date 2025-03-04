.class public abstract Lio/ktor/http/HttpStatusCodeKt;
.super Ljava/lang/Object;
.source "HttpStatusCode.kt"


# direct methods
.method public static final allStatusCodes()Ljava/util/List;
    .locals 4

    const/16 v0, 0x35

    new-array v0, v0, [Lio/ktor/http/HttpStatusCode;

    .line 133
    sget-object v1, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getContinue()Lio/ktor/http/HttpStatusCode;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    .line 134
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getSwitchingProtocols()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    .line 135
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getProcessing()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    .line 136
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getOK()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    .line 137
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getCreated()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    .line 138
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getAccepted()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    .line 139
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getNonAuthoritativeInformation()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x7

    .line 140
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getNoContent()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x8

    .line 141
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getResetContent()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x9

    .line 142
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getPartialContent()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xa

    .line 143
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getMultiStatus()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xb

    .line 144
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getMultipleChoices()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xc

    .line 145
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getMovedPermanently()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xd

    .line 146
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getFound()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xe

    .line 147
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getSeeOther()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xf

    .line 148
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getNotModified()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x10

    .line 149
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getUseProxy()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x11

    .line 150
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getSwitchProxy()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x12

    .line 151
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getTemporaryRedirect()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x13

    .line 152
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getPermanentRedirect()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x14

    .line 153
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getBadRequest()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x15

    .line 154
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getUnauthorized()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x16

    .line 155
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getPaymentRequired()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x17

    .line 156
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getForbidden()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x18

    .line 157
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getNotFound()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x19

    .line 158
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getMethodNotAllowed()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    .line 159
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getNotAcceptable()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    .line 160
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getProxyAuthenticationRequired()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    .line 161
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getRequestTimeout()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    .line 162
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getConflict()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    .line 163
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getGone()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    .line 164
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getLengthRequired()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x20

    .line 165
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getPreconditionFailed()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x21

    .line 166
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getPayloadTooLarge()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x22

    .line 167
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getRequestURITooLong()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x23

    .line 168
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getUnsupportedMediaType()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x24

    .line 169
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getRequestedRangeNotSatisfiable()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x25

    .line 170
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getExpectationFailed()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x26

    .line 171
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getUnprocessableEntity()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x27

    .line 172
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getLocked()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x28

    .line 173
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getFailedDependency()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x29

    .line 174
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getTooEarly()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x2a

    .line 175
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getUpgradeRequired()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x2b

    .line 176
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getTooManyRequests()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x2c

    .line 177
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getRequestHeaderFieldTooLarge()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x2d

    .line 178
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getInternalServerError()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x2e

    .line 179
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getNotImplemented()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x2f

    .line 180
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getBadGateway()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x30

    .line 181
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getServiceUnavailable()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x31

    .line 182
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getGatewayTimeout()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x32

    .line 183
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getVersionNotSupported()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x33

    .line 184
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getVariantAlsoNegotiates()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x34

    .line 185
    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getInsufficientStorage()Lio/ktor/http/HttpStatusCode;

    move-result-object v1

    aput-object v1, v0, v2

    .line 132
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
