.class public final Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$21;
.super Lkotlin/properties/ObservableProperty;
.source "Delegates.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/config/CoreConfigurationBuilder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/config/CoreConfigurationBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V
    .locals 0

    iput-object p2, p0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$21;->this$0:Lorg/acra/config/CoreConfigurationBuilder;

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
    check-cast p3, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    iget-object p1, p0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$21;->this$0:Lorg/acra/config/CoreConfigurationBuilder;

    .line 74
    invoke-static {p1}, Lorg/acra/config/CoreConfigurationBuilder;->access$get_defaultsBitField0$p(Lorg/acra/config/CoreConfigurationBuilder;)I

    move-result p2

    const p3, -0x100001

    and-int/2addr p2, p3

    invoke-static {p1, p2}, Lorg/acra/config/CoreConfigurationBuilder;->access$set_defaultsBitField0$p(Lorg/acra/config/CoreConfigurationBuilder;I)V

    return-void
.end method
