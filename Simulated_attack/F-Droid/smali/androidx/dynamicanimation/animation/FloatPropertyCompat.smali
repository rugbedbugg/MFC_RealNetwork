.class public abstract Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.super Ljava/lang/Object;
.source "FloatPropertyCompat.java"


# instance fields
.field final mPropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->mPropertyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getValue(Ljava/lang/Object;)F
.end method

.method public abstract setValue(Ljava/lang/Object;F)V
.end method
