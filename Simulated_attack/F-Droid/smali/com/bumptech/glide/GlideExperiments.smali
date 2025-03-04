.class public Lcom/bumptech/glide/GlideExperiments;
.super Ljava/lang/Object;
.source "GlideExperiments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/GlideExperiments$Builder;
    }
.end annotation


# instance fields
.field private final experiments:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/GlideExperiments$Builder;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    .line 24
    invoke-static {p1}, Lcom/bumptech/glide/GlideExperiments$Builder;->access$000(Lcom/bumptech/glide/GlideExperiments$Builder;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/GlideExperiments;->experiments:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public isEnabled(Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/GlideExperiments;->experiments:Ljava/util/Map;

    .line 40
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
