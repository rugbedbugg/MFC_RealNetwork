.class final Lcom/bumptech/glide/GlideExperiments$Builder;
.super Ljava/lang/Object;
.source "GlideExperiments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/GlideExperiments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private final experiments:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/GlideExperiments$Builder;->experiments:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/GlideExperiments$Builder;)Ljava/util/Map;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/bumptech/glide/GlideExperiments$Builder;->experiments:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method build()Lcom/bumptech/glide/GlideExperiments;
    .locals 1

    .line 63
    new-instance v0, Lcom/bumptech/glide/GlideExperiments;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/GlideExperiments;-><init>(Lcom/bumptech/glide/GlideExperiments$Builder;)V

    return-object v0
.end method
