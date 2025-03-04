.class final Lorg/acra/plugins/ServicePluginLoader$loadEnabled$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ServicePluginLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/plugins/ServicePluginLoader;->loadEnabled(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $config:Lorg/acra/config/CoreConfiguration;


# direct methods
.method constructor <init>(Lorg/acra/config/CoreConfiguration;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/acra/plugins/ServicePluginLoader$loadEnabled$1;->$config:Lorg/acra/config/CoreConfiguration;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/acra/plugins/Plugin;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/acra/plugins/ServicePluginLoader$loadEnabled$1;->$config:Lorg/acra/config/CoreConfiguration;

    .line 32
    invoke-interface {p1, v0}, Lorg/acra/plugins/Plugin;->enabled(Lorg/acra/config/CoreConfiguration;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lorg/acra/plugins/Plugin;

    invoke-virtual {p0, p1}, Lorg/acra/plugins/ServicePluginLoader$loadEnabled$1;->invoke(Lorg/acra/plugins/Plugin;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
