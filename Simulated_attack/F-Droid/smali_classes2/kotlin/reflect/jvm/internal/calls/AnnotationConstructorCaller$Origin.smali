.class public final enum Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;
.super Ljava/lang/Enum;
.source "AnnotationConstructorCaller.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Origin"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;

.field public static final enum JAVA:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;

.field public static final enum KOTLIN:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;


# direct methods
.method private static final synthetic $values()[Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;
    .locals 3

    .line 0
    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;

    const/4 v1, 0x0

    sget-object v2, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;->JAVA:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;->KOTLIN:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;

    const-string v1, "JAVA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;->JAVA:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;

    const-string v1, "KOTLIN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;->KOTLIN:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;

    invoke-static {}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;->$values()[Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;->$VALUES:[Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;
    .locals 1

    .line 0
    const-class v0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;
    .locals 1

    .line 0
    sget-object v0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;->$VALUES:[Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;

    return-object v0
.end method
