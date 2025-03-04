.class public abstract Lio/ktor/client/utils/ClientEventsKt;
.super Ljava/lang/Object;
.source "ClientEvents.kt"


# static fields
.field private static final HttpRequestCreated:Lio/ktor/events/EventDefinition;

.field private static final HttpRequestIsReadyForSending:Lio/ktor/events/EventDefinition;

.field private static final HttpResponseCancelled:Lio/ktor/events/EventDefinition;

.field private static final HttpResponseReceiveFailed:Lio/ktor/events/EventDefinition;

.field private static final HttpResponseReceived:Lio/ktor/events/EventDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpRequestCreated:Lio/ktor/events/EventDefinition;

    .line 20
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpRequestIsReadyForSending:Lio/ktor/events/EventDefinition;

    .line 25
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpResponseReceived:Lio/ktor/events/EventDefinition;

    .line 35
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpResponseReceiveFailed:Lio/ktor/events/EventDefinition;

    .line 40
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpResponseCancelled:Lio/ktor/events/EventDefinition;

    return-void
.end method

.method public static final getHttpRequestCreated()Lio/ktor/events/EventDefinition;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpRequestCreated:Lio/ktor/events/EventDefinition;

    return-object v0
.end method

.method public static final getHttpRequestIsReadyForSending()Lio/ktor/events/EventDefinition;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpRequestIsReadyForSending:Lio/ktor/events/EventDefinition;

    return-object v0
.end method

.method public static final getHttpResponseCancelled()Lio/ktor/events/EventDefinition;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpResponseCancelled:Lio/ktor/events/EventDefinition;

    return-object v0
.end method

.method public static final getHttpResponseReceiveFailed()Lio/ktor/events/EventDefinition;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpResponseReceiveFailed:Lio/ktor/events/EventDefinition;

    return-object v0
.end method

.method public static final getHttpResponseReceived()Lio/ktor/events/EventDefinition;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpResponseReceived:Lio/ktor/events/EventDefinition;

    return-object v0
.end method
