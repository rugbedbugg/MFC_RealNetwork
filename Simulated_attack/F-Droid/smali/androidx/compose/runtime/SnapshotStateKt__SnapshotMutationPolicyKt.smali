.class abstract synthetic Landroidx/compose/runtime/SnapshotStateKt__SnapshotMutationPolicyKt;
.super Ljava/lang/Object;
.source "SnapshotMutationPolicy.kt"


# direct methods
.method public static final neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 2

    .line 103
    sget-object v0, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE:Landroidx/compose/runtime/NeverEqualPolicy;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutationPolicy<T of androidx.compose.runtime.SnapshotStateKt__SnapshotMutationPolicyKt.neverEqualPolicy>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final referentialEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 2

    .line 69
    sget-object v0, Landroidx/compose/runtime/ReferentialEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/ReferentialEqualityPolicy;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutationPolicy<T of androidx.compose.runtime.SnapshotStateKt__SnapshotMutationPolicyKt.referentialEqualityPolicy>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 2

    .line 86
    sget-object v0, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutationPolicy<T of androidx.compose.runtime.SnapshotStateKt__SnapshotMutationPolicyKt.structuralEqualityPolicy>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
