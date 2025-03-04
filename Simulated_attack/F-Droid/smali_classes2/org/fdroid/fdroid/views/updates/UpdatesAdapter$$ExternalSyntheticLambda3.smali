.class public final synthetic Lorg/fdroid/fdroid/views/updates/UpdatesAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lorg/fdroid/fdroid/views/updates/items/AppStatus;

    check-cast p2, Lorg/fdroid/fdroid/views/updates/items/AppStatus;

    invoke-static {p1, p2}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->$r8$lambda$04R8FVxOjnY5bcxbt25ip-ek9g8(Lorg/fdroid/fdroid/views/updates/items/AppStatus;Lorg/fdroid/fdroid/views/updates/items/AppStatus;)I

    move-result p1

    return p1
.end method
