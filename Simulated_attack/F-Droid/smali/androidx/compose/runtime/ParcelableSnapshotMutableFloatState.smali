.class public final Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;
.super Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;
.source "ParcelableSnapshotMutableFloatState.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->Companion:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState$Companion;

    .line 39
    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState$Companion$CREATOR$1;

    invoke-direct {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState$Companion$CREATOR$1;-><init>()V

    sput-object v0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;-><init>(F)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
