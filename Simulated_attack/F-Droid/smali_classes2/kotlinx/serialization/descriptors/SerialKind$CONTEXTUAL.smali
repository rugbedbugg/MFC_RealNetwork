.class public final Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;
.super Lkotlinx/serialization/descriptors/SerialKind;
.source "SerialKinds.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/descriptors/SerialKind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CONTEXTUAL"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;

    invoke-direct {v0}, Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;-><init>()V

    sput-object v0, Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Lkotlinx/serialization/descriptors/SerialKind;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
