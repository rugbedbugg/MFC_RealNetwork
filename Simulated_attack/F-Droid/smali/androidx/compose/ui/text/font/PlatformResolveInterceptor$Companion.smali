.class public final Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;
.super Ljava/lang/Object;
.source "FontFamilyResolver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/font/PlatformResolveInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;

.field private static final Default:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;->$$INSTANCE:Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;

    .line 126
    new-instance v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion$Default$1;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion$Default$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;->Default:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefault$ui_text_release()Landroidx/compose/ui/text/font/PlatformResolveInterceptor;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;->Default:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;

    return-object v0
.end method
