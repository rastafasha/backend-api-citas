<?php

namespace App\Policies;

use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class UsertPolicy
{
    use HandlesAuthorization;

    /**
     * Puede ver el lista de divisas
     *
     * @param User $userAuth
     * @return \Illuminate\Http\Response
     */
    public function index(User $userAuth) {

        // return $userAuthAuth->role == "ADMIN";
        return in_array($userAuth->role, [$userAuth->role == "SUPERADMIN", "ADMIN", "GUEST", "MEMBER"]);

    }

    /**
     * Puede ver la información
     *
     * @param User $userAuth
     * @return \Illuminate\Http\Response
     */
    public function userShow(User $userAuth, User $user) {

        // return in_array($userAuth->role, [$userAuth->role == "ADMIN"]);
        return in_array($user->role, [$user->role == "SUPERADMIN", "ADMIN", "GUEST", "MEMBER"]);

    }


    /**
     * Puede crear una nueva
     *
     * @param User $user
     * @return \Illuminate\Http\Response
     */
    public function userUpdate(User $userAuth, User $user) {

        // return in_array($userAuth->role, [$userAuth->role == "SUPERADMIN"]);
        return in_array($user->role, [$user->role == "SUPERADMIN", "ADMIN", "GUEST", "MEMBER"]);

    }

    /**
     * Puede borrar
     *
     * @param User $userAuth
     * @return @return \Illuminate\Http\Response
     */
    public function userDestroy(User $userAuth, User $user) {

        // return in_array($userAuth->role, [$userAuth->role == "SUPERADMIN"]);
        return in_array($user->role, [$user->role == "SUPERADMIN", "ADMIN"]);

    }

    /**
     * Puede ver regsistros borrados
     *
     * @param User $userAuth
     * @return \Illuminate\Http\Response
     */
    public function indexDeletes(User $userAuth) {

        return $userAuth->role == "ADMIN";

    }

    /**
     * Puede ver el registro borrado
     *
     * @param User $userAuth
     * @return \Illuminate\Http\Response
     */
    public function userDeleteShow(User $userAuth, User $user) {

        return in_array($userAuth->role, [$userAuth->role == "ADMIN"]);

    }

    /**
     * Puede restaurar el resgistro
     *
     * @param User $userAuth
     * @return \Illuminate\Http\Response
     */
    public function userDeleteRestore(User $userAuth, User $user) {

        return in_array($userAuth->role, [$userAuth->role == "SUPERADMIN"]);

    }

    /**
     * Puede borrar el registro del sistema
     *
     * @param User $userAuth
     * @return \Illuminate\Http\Response
     */
    public function userDeleteForce(User $userAuth, User $user) {

        return in_array($userAuth->role, [$userAuth->role == "SUPERADMIN"]);

    }
}
