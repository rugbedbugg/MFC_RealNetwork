.class public final Lio/ktor/http/ParametersBuilderImpl;
.super Lio/ktor/util/StringValuesBuilderImpl;
.source "Parameters.kt"

# interfaces
.implements Lio/ktor/http/ParametersBuilder;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, v0, p1}, Lio/ktor/util/StringValuesBuilderImpl;-><init>(ZI)V

    return-void
.end method


# virtual methods
.method public build()Lio/ktor/http/Parameters;
    .locals 2

    .line 41
    new-instance v0, Lio/ktor/http/ParametersImpl;

    invoke-virtual {p0}, Lio/ktor/util/StringValuesBuilderImpl;->getValues()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/http/ParametersImpl;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
