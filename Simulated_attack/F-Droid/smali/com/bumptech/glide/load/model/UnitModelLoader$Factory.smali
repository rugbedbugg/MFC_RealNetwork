.class public Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;
.super Ljava/lang/Object;
.source "UnitModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/UnitModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static final FACTORY:Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->FACTORY:Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;
    .locals 1

    .line 0
    sget-object v0, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->FACTORY:Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    return-object v0
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 0

    .line 113
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader;

    move-result-object p1

    return-object p1
.end method
