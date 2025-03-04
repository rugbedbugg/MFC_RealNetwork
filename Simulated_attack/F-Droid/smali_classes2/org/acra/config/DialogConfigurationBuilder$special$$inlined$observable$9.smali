.class public final Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$9;
.super Lkotlin/properties/ObservableProperty;
.source "Delegates.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/config/DialogConfigurationBuilder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/config/DialogConfigurationBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/acra/config/DialogConfigurationBuilder;)V
    .locals 0

    iput-object p2, p0, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$9;->this$0:Lorg/acra/config/DialogConfigurationBuilder;

    .line 33
    invoke-direct {p0, p1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected afterChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    check-cast p3, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$9;->this$0:Lorg/acra/config/DialogConfigurationBuilder;

    .line 75
    invoke-static {p1}, Lorg/acra/config/DialogConfigurationBuilder;->access$get_defaultsBitField0$p(Lorg/acra/config/DialogConfigurationBuilder;)I

    move-result p2

    and-int/lit16 p2, p2, -0x101

    .line 73
    invoke-static {p1, p2}, Lorg/acra/config/DialogConfigurationBuilder;->access$set_defaultsBitField0$p(Lorg/acra/config/DialogConfigurationBuilder;I)V

    return-void
.end method
